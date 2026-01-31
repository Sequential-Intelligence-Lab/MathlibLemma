import Mathlib


/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

/-! #### Rectangle / annulus / circle integral related lemmas -/
lemma Complex.realDifferentiable_on_iff {f : ℂ → E} {s : Set ℂ} :
    DifferentiableOn ℝ f s ↔
      (∀ z ∈ s, HasFDerivAt f (fderiv ℝ f z) z) :=
by
  sorry
