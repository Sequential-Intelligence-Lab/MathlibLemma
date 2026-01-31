import Mathlib

lemma one_le_sqrt_iff {x : ℝ} :
    1 ≤ √x ↔ 1 ≤ x := by
  -- Split on whether x is nonnegative
  by_cases hx : 0 ≤ x
  · -- Nonnegative case: use the standard sqrt inequality lemma
    -- In Mathlib there is a lemma `one_le_sqrt` for reals:
    --   one_le_sqrt (hx : 0 ≤ x) : 1 ≤ Real.sqrt x ↔ 1 ≤ x
    simpa using (one_le_sqrt (x := x) hx)
  · -- Negative case: x < 0
    have hxlt : x < 0 := lt_of_not_ge hx
    -- For nonpositive x, sqrt x = 0
    have hsqrt : √x = 0 :=
      Real.sqrt_eq_zero_of_nonpos (le_of_lt hxlt)
    constructor
    · -- (→) direction: from 1 ≤ √x derive a contradiction
      intro h
      -- From h and hsqrt we get 1 ≤ 0, which is impossible
      have h' : (1 : ℝ) ≤ 0 := by simpa [hsqrt] using h
      have : False := by linarith
      exact this.elim
    · -- (←) direction: from 1 ≤ x derive a contradiction with x < 0
      intro h
      -- 1 ≤ x and x < 0 imply 1 ≤ 0, contradiction
      have h' : (1 : ℝ) ≤ 0 := le_trans h (le_of_lt hxlt)
      have : False := by linarith
      exact this.elim