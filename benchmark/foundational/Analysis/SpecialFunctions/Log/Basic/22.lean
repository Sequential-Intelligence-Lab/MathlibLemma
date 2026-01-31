import Mathlib

lemma Real.log_le_log_of_abs_le_abs {x y : ℝ}
    (hx : 0 < |x|) (hy : 0 < |y|) (hxy : |x| ≤ |y|) :
    Real.log |x| ≤ Real.log |y| := by
  sorry
