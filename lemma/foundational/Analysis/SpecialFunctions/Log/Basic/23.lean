import Mathlib

lemma Real.log_lt_log_of_abs_lt_abs {x y : ℝ}
    (hx : 0 < |x|) (hy : 0 < |y|) (hxy : |x| < |y|) :
    Real.log |x| < Real.log |y| := by
  -- `Real.log` is strictly increasing on `(0, ∞)`,
  -- so we can apply `Real.log_lt_log` to `|x|` and `|y|`.
  exact Real.log_lt_log hx hxy