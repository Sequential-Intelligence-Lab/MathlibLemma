import Mathlib

open scoped RealInnerProductSpace

lemma inner_sub_left_real {E : Type*}
    [SeminormedAddCommGroup E] [InnerProductSpace ℝ E]
    (x y z : E) :
    ⟪x - y, z⟫ = ⟪x, z⟫ - ⟪y, z⟫ := by
  -- Rewrite subtraction as addition of the negation and use linearity in the first argument
  simpa [sub_eq_add_neg, inner_add_left, inner_neg_left, sub_eq_add_neg]