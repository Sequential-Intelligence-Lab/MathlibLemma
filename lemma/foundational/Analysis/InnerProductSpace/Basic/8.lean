import Mathlib

open scoped RealInnerProductSpace
open scoped InnerProductSpace

lemma inner_self_nonneg_real {E : Type*}
    [SeminormedAddCommGroup E] [InnerProductSpace ℝ E]
    (x : E) :
    (0 : ℝ) ≤ ⟪x, x⟫_ℝ := by
  -- The square of the norm is always nonnegative
  have h : (0 : ℝ) ≤ ‖x‖ ^ 2 := by
    simpa using sq_nonneg (‖x‖ : ℝ)
  -- Rewrite `‖x‖ ^ 2` as `⟪x, x⟫_ℝ`
  simpa [← real_inner_self_eq_norm_sq (x)] using h