import Mathlib

lemma real_inner_add_left_cancel {E : Type*}
    [SeminormedAddCommGroup E] [InnerProductSpace ℝ E]
    {x y z : E} :
    inner ℝ (x + y) z = inner ℝ (x + z) z →
    inner ℝ y z = inner ℝ z z := by
  sorry