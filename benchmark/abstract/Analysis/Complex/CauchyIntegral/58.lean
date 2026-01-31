import Mathlib

/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F] [Inhabited E]

/-- Placeholder definition for `Complex.iteratedDeriv` to make the statement compile.
    This is *not* the real definition from mathlib; it is just a dummy value with
    the correct type. -/
noncomputable
def Complex.iteratedDeriv (n : ℕ) (f : ℂ → E) (z : ℂ) : E :=
  default

/-! #### Rectangle / annulus / circle integral related lemmas -/
lemma Complex.iteratedDeriv_norm_le_of_sup_circle
    {f : ℂ → E} {c : ℂ} {R : ℝ} (n : ℕ)
    (h0 : 0 < R)
    (hf : ContinuousOn f (Metric.closedBall c R))
    (hhol : AnalyticOn ℂ f (Metric.ball c R)) :
    ‖Complex.iteratedDeriv n f c‖
      ≤ (n.factorial / (R ^ n)) *
          (⨆ z ∈ Metric.sphere c R, ‖f z‖) :=
by
  sorry