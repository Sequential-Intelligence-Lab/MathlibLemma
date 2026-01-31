import Mathlib

lemma Real.rpow_le_rpow_of_nonpos_exponent {x y z : ℝ}
    (hx : 0 < x) (hxy : x ≤ y) (hz : z ≤ 0) :
    y ^ z ≤ x ^ z := by
  sorry
