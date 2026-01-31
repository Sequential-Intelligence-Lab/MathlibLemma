import Mathlib

open scoped RealInnerProductSpace

lemma inner_sub_left_real {E : Type*}
    [SeminormedAddCommGroup E] [InnerProductSpace ℝ E]
    (x y z : E) :
    ⟪x - y, z⟫ = ⟪x, z⟫ - ⟪y, z⟫ := by
  sorry