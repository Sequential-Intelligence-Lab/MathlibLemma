import Mathlib

lemma Real.rpow_eq_self_iff (x y : ℝ) (hx : 0 < x) :
    x ^ y = x ↔ y = 1 ∨ x = 1 := by
  constructor
  · intro h
    by_cases h1 : x = 1
    · -- Case x = 1
      right
      exact h1
    · -- Case x ≠ 1: use logs to show y = 1
      left
      -- Take log on both sides
      have hlog_eq : Real.log (x ^ y) = Real.log x := by
        simpa [h]
      -- Expand log of rpow
      have hlog_rpow : Real.log (x ^ y) = y * Real.log x := by
        simpa using Real.log_rpow hx (y := y)
      -- Combine the two equalities
      have hmul : y * Real.log x = Real.log x := by
        simpa [hlog_rpow] using hlog_eq
      -- Rewrite as (log x) * y = (log x) * 1
      have hmul' : Real.log x * y = Real.log x * 1 := by
        simpa [mul_comm] using hmul
      -- Show log x ≠ 0 (otherwise x = 1, contradicting h1)
      have hxlog : Real.log x ≠ 0 := by
        intro hlog
        have hx0or1orneg1 : x = 0 ∨ x = 1 ∨ x = -1 :=
          (Real.log_eq_zero).1 hlog
        rcases hx0or1orneg1 with hx0 | hx1 | hxneg1
        · -- x = 0 contradicts hx : 0 < x
          have : (0 : ℝ) < 0 := by simpa [hx0] using hx
          exact lt_irrefl _ this
        · -- x = 1 contradicts h1
          exact h1 hx1
        · -- x = -1 contradicts hx : 0 < x
          have : (0 : ℝ) < -1 := by simpa [hxneg1] using hx
          linarith
      -- Cancel log x from both sides
      have hy : y = 1 := by
        exact mul_left_cancel₀ hxlog hmul'
      exact hy
  · intro h
    rcases h with hY | hX
    · -- y = 1
      simp [hY]
    · -- x = 1
      simp [hX]