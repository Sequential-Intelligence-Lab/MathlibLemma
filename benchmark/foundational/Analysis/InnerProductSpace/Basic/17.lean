import Mathlib

open scoped RealInnerProductSpace

lemma real_inner_zero_right_iff {E : Type*}
    [SeminormedAddCommGroup E] [InnerProductSpace ℝ E] {x : E} :
    (∀ y : E, ⟪y, x⟫ = 0) ↔ x = 0 := by
  sorry