import Mathlib


/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

/-! #### Rectangle / annulus / circle integral related lemmas -/
lemma Complex.sphere_subset_compl_closedBall {c : ℂ} {r R : ℝ}
    (hrR : r > R) :
    Metric.sphere c r ⊆ (Metric.closedBall c R)ᶜ :=
by
  sorry
