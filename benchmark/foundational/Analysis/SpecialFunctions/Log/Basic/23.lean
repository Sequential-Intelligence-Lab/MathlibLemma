import Mathlib

lemma Real.log_lt_log_of_abs_lt_abs {x y : ℝ}
    (hx : 0 < |x|) (hy : 0 < |y|) (hxy : |x| < |y|) :
    Real.log |x| < Real.log |y| := by
  sorry
