import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


open scoped RealInnerProductSpace

lemma inner_self_eq_norm_sq_real {E : Type*}
    [SeminormedAddCommGroup E] [InnerProductSpace ℝ E]
    (x : E) :
    ⟪x, x⟫ = ‖x‖ ^ 2 := by
  have h1 : ‖x‖ ^ 2 = ⟪x, x⟫ := by
    have h2 : ‖x‖ = Real.sqrt (⟪x, x⟫) := by
      have h3 : ‖x‖ = Real.sqrt (RCLike.re (inner ℝ x x)) := by
        apply norm_eq_sqrt_re_inner
      have h4 : RCLike.re (inner ℝ x x) = ⟪x, x⟫ := by
        simp [RCLike.re, inner]
      rw [h4] at h3
      exact h3
    have h3 : 0 ≤ (⟪x, x⟫ : ℝ) := by
      have h5 : 0 ≤ RCLike.re (inner ℝ x x) := by
        apply inner_self_nonneg
      have h4 : RCLike.re (inner ℝ x x) = ⟪x, x⟫ := by
        simp [RCLike.re, inner]
      linarith
    have h4 : Real.sqrt (⟪x, x⟫) ^ 2 = ⟪x, x⟫ := by
      rw [Real.sq_sqrt]
      linarith
    calc
      ‖x‖ ^ 2 = (Real.sqrt (⟪x, x⟫)) ^ 2 := by
        rw [show ‖x‖ = Real.sqrt (⟪x, x⟫) by exact h2]
      _ = ⟪x, x⟫ := by
        linarith [h4]
  linarith [h1]