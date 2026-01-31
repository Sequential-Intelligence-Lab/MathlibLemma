import Mathlib

open RealInnerProductSpace

lemma real_inner_sub_eq_add_inner_sub_inner
    {E : Type*} [SeminormedAddCommGroup E] [InnerProductSpace ℝ E]
    (x y z : E) :
    ⟪x - y, z⟫ = ⟪x, z⟫ - ⟪y, z⟫ := by
  sorry