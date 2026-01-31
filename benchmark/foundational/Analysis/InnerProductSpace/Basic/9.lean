import Mathlib

open scoped RealInnerProductSpace

lemma inner_self_eq_norm_sq_real {E : Type*}
    [SeminormedAddCommGroup E] [InnerProductSpace ℝ E]
    (x : E) :
    ⟪x, x⟫ = ‖x‖ ^ 2 := by
  sorry