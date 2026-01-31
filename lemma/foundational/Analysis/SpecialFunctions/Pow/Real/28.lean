import Mathlib

lemma Real.rpow_eq_one_iff_of_pos {x y : ℝ} (hx : 0 < x) :
    x ^ y = 1 ↔ y = 0 ∨ x = 1 := by
  constructor
  · -- → direction
    intro h
    -- Take logs on both sides
    have hlog : Real.log (x ^ y) = Real.log 1 := by simpa [h]
    -- Use log_rpow and log_one to simplify
    have h1 : y * Real.log x = 0 := by
      simpa [Real.log_rpow hx, Real.log_one] using hlog
    -- Product equals zero, so one factor is zero
    have hzero : y = 0 ∨ Real.log x = 0 := mul_eq_zero.mp h1
    -- Convert log x = 0 to x = 1 using positivity of x
    cases hzero with
    | inl hy =>
        left
        exact hy
    | inr hlogx =>
        right
        -- from log x = 0 and 0 < x, deduce x = 1 via exp_log
        have hx_exp : x = Real.exp (Real.log x) := (Real.exp_log hx).symm
        simpa [hlogx] using hx_exp
  · -- ← direction
    intro h
    cases h with
    | inl hy =>
        -- y = 0
        subst hy
        have hx' : (0 : ℝ) ≤ x := le_of_lt hx
        simpa using Real.rpow_zero (x := x) hx'
    | inr hx1 =>
        -- x = 1
        subst hx1
        simpa using Real.one_rpow y