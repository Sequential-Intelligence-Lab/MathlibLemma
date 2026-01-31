import Mathlib

lemma inner_sub_right_real {E : Type*}
    [SeminormedAddCommGroup E] [InnerProductSpace ℝ E]
    (x y z : E) :
    inner ℝ x (y - z) = inner ℝ x y - inner ℝ x z := by
  sorry