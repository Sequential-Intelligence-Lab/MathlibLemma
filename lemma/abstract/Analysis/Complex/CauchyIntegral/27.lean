import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

/-! #### Rectangle / annulus / circle integral related lemmas -/
lemma Complex.realDifferentiable_on_iff {f : ℂ → E} {s : Set ℂ} :
    DifferentiableOn ℝ f s ↔
      (∀ z ∈ s, HasFDerivAt f (fderiv ℝ f z) z) := by
  constructor
  · -- Assume differentiable on, need to show has fderiv at
    sorry
  · -- Assume has fderiv at, need to show differentiable on
    intro h z hz
    have h2 : HasFDerivAt f (fderiv ℝ f z) z := h z hz
    have h3 : DifferentiableAt ℝ f z := h2.differentiableAt
    exact h3.differentiableWithinAt