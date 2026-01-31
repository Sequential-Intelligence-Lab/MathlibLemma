import Mathlib

open scoped RealInnerProductSpace

lemma real_inner_mul_self_le_inner_self_mul_inner_self
    {E : Type*} [SeminormedAddCommGroup E] [InnerProductSpace ℝ E]
    (x y : E) :
    (⟪x, y⟫ : ℝ) ^ 2 ≤ (⟪x, x⟫ : ℝ) * (⟪y, y⟫ : ℝ) := by
  sorry