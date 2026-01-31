import Mathlib

/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

/-! #### Rectangle / annulus / circle integral related lemmas -/
lemma Complex.sphere_subset_annulus {c : ℂ} {r R : ℝ}
    (hR : r ≤ R) :
    Metric.sphere c r ⊆ {z : ℂ | ‖z - c‖ ≤ R} :=
by
  sorry