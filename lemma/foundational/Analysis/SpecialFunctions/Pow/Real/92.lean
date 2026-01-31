import Mathlib

lemma Real.rpow_inv_mul_rpow' {x : ℝ} (hx : 0 < x) (y : ℝ) :
    x ^ (-y) * x ^ y = 1 := by
  calc
    x ^ (-y) * x ^ y
        = x ^ ((-y) + y) := by
          -- Real.rpow_add hx (-y) y : x ^ (-y + y) = x ^ (-y) * x ^ y
          simpa using (Real.rpow_add hx (-y) y).symm
    _   = x ^ (0 : ℝ) := by simp
    _   = 1 := by simpa using (Real.rpow_zero x)