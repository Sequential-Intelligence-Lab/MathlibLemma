import Mathlib


/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

/-! #### Rectangle / annulus / circle integral related lemmas -/
lemma Complex.analyticAt_restrictScalars
    {f : ℂ → E} {z : ℂ}
    (hf : AnalyticAt ℂ f z) :
    AnalyticAt ℝ f z :=
by
  sorry
