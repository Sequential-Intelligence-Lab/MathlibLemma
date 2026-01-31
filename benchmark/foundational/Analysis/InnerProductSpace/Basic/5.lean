import Mathlib

open scoped RealInnerProductSpace

lemma inner_add_right_real {E : Type*}
    [SeminormedAddCommGroup E] [InnerProductSpace ℝ E]
    (x y z : E) :
    ⟪x, y + z⟫ = ⟪x, y⟫ + ⟪x, z⟫ := by
  sorry