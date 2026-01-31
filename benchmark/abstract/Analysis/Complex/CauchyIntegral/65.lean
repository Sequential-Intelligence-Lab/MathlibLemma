import Mathlib

/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

/-! #### Rectangle / annulus / circle integral related lemmas -/
lemma Complex.norm_le_of_holomorphic_on_boundary
    {f : ℂ → ℂ} {c : ℂ} {R : ℝ}
    (h0 : 0 < R)
    (hf : AnalyticOn ℂ f (Metric.closedBall c R))
    (hmax : ∀ z ∈ Metric.sphere c R, ‖f z‖ ≤ ‖f c‖) :
    ∀ z ∈ Metric.closedBall c R, ‖f z‖ ≤ ‖f c‖ :=
by
  sorry