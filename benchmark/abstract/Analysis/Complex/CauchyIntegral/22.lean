import Mathlib


/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

/-! #### Rectangle / annulus / circle integral related lemmas -/
lemma Complex.closedBall_subset_Annulus {c : ℂ} {r R : ℝ}
    (hr : 0 ≤ r) (hR : r ≤ R) :
    Metric.closedBall c r ⊆ {z : ℂ | ‖z - c‖ ≤ R} :=
by
  sorry