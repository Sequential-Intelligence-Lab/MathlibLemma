import Mathlib


/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

/-! #### Rectangle / annulus / circle integral related lemmas -/
lemma Complex.mem_closedBall_iff {c z : ℂ} {r : ℝ} :
    z ∈ Metric.closedBall c r ↔ ‖z - c‖ ≤ r :=
by
  -- In a metric space: `x ∈ closedBall y r ↔ dist x y ≤ r`.
  -- For `ℂ`, `dist z c = ‖z - c‖`.
  simpa [Metric.mem_closedBall, Complex.dist_eq]