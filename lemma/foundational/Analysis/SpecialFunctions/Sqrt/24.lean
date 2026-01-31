import Mathlib

lemma sqrt_inv_sq (x : ℝ) :
    √(x⁻¹ ^ 2) = |x|⁻¹ := by
  calc
    √(x⁻¹ ^ 2)
        = |x⁻¹| := by
          simpa using Real.sqrt_sq_eq_abs (x⁻¹)
    _   = |x|⁻¹ := by
          simpa using abs_inv x