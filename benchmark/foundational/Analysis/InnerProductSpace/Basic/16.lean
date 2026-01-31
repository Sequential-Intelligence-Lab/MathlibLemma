import Mathlib

lemma real_inner_zero_left_iff {E : Type*}
    [SeminormedAddCommGroup E] [InnerProductSpace ℝ E] {x : E} :
    (∀ y : E, inner ℝ x y = 0) ↔ x = 0 := by
  sorry