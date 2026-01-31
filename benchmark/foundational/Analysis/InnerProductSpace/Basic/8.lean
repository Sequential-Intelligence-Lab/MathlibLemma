import Mathlib

open scoped RealInnerProductSpace
open scoped InnerProductSpace

lemma inner_self_nonneg_real {E : Type*}
    [SeminormedAddCommGroup E] [InnerProductSpace ℝ E]
    (x : E) :
    (0 : ℝ) ≤ ⟪x, x⟫_ℝ := by
  sorry