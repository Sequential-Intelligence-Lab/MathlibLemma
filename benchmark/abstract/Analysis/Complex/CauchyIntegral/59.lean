import Mathlib


/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

/-! #### Rectangle / annulus / circle integral related lemmas -/
lemma Complex.deriv_norm_le_of_sup_circle
    {f : ℂ → E} {c : ℂ} {R : ℝ}
    (h0 : 0 < R)
    (hf : ContinuousOn f (Metric.closedBall c R))
    (hhol : AnalyticOn ℂ f (Metric.ball c R)) :
    ‖deriv f c‖
      ≤ (1 / R) * (⨆ z ∈ Metric.sphere c R, ‖f z‖) :=
by
  sorry
