import Mathlib

open scoped InnerProductSpace

lemma real_inner_sub_sub_left
    {E : Type*}
    [SeminormedAddCommGroup E] [InnerProductSpace ℝ E]
    (x y z w : E) :
    ⟪x - y, z - w⟫_ℝ =
      ⟪x, z⟫_ℝ - ⟪x, w⟫_ℝ - ⟪y, z⟫_ℝ + ⟪y, w⟫_ℝ := by
  sorry