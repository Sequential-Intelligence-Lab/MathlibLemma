import Mathlib

lemma Real.rpow_mul_rpow_inv {x : ℝ} (hx : 0 < x) (y : ℝ) :
    x ^ y * x ^ (-y) = 1 := by
  calc
    x ^ y * x ^ (-y)
        = x ^ (y + -y) := by
          -- use the additive law for exponents and take the symmetric equality
          simpa using (Real.rpow_add hx y (-y)).symm
    _   = x ^ 0 := by
          -- simplify y + (-y) to 0
          simp
    _   = 1 := by
          -- x ^ 0 = 1 for real x
          simpa using (Real.rpow_zero x)