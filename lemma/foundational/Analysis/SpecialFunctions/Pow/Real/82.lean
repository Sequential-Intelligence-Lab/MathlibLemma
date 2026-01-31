import Mathlib

lemma Real.rpow_add_sub {x : ℝ} (hx : 0 < x) (y z : ℝ) :
    x ^ (y + z) / x ^ z = x ^ y := by
  -- x ^ z is positive, hence nonzero
  have hz_ne : x ^ z ≠ 0 := ne_of_gt (Real.rpow_pos_of_pos hx z)
  calc
    x ^ (y + z) / x ^ z
        = (x ^ y * x ^ z) / x ^ z := by
            -- use the rpow addition rule: x^(y+z) = x^y * x^z
            simpa [Real.rpow_add hx y z]
    _ = x ^ y := by
            -- cancel the factor x^z in numerator and denominator
            simpa [hz_ne] using (mul_div_cancel' (x ^ y) hz_ne)