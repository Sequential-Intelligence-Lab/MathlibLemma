import Mathlib

lemma inner_neg_right_real {E : Type*}
    [SeminormedAddCommGroup E] [InnerProductSpace ℝ E] (x y : E) :
    inner ℝ x (-y) = - inner ℝ x y := by
  sorry