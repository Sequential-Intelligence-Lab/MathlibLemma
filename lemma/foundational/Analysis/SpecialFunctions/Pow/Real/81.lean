import Mathlib

lemma Real.rpow_sub_add {x : ℝ} (hx : 0 < x) (y z : ℝ) :
    x ^ (y - z) * x ^ z = x ^ y := by
  -- Use the rpow_add lemma to combine the exponents
  calc
    x ^ (y - z) * x ^ z = x ^ ((y - z) + z) := by
      -- Real.rpow_add hx (y - z) z : x ^ ((y - z) + z) = x ^ (y - z) * x ^ z
      simpa using (Real.rpow_add hx (y - z) z).symm
    _ = x ^ y := by
      -- Simplify the exponent: (y - z) + z = y
      simp [sub_eq_add_neg, add_assoc, add_comm, add_left_comm]