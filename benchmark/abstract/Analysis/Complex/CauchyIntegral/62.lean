import Mathlib

/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

/-! #### Rectangle / annulus / circle integral related lemmas -/

/-- If two functions are analytic on a ball and agree almost everywhere on that ball,
then they agree on the whole ball. -/
lemma AnalyticOn.eq_of_eqOn_ball
    {f g : ℂ → E} {c : ℂ} {R : ℝ}
    (hf : AnalyticOn ℂ f (Metric.ball c R))
    (hg : AnalyticOn ℂ g (Metric.ball c R))
    (hR : 0 < R)
    (hfg : ∀ᵐ z, z ∈ Metric.ball c R → f z = g z) :
    Set.EqOn f g (Metric.ball c R) :=
by
  sorry