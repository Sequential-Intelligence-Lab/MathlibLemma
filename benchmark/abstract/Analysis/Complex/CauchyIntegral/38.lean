import Mathlib


/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

/-! #### Rectangle / annulus / circle integral related lemmas -/
lemma Complex.analyticOn_restrictScalars
    {f : ℂ → E} {s : Set ℂ}
    (hf : AnalyticOn ℂ f s) :
    AnalyticOn ℝ f s :=
by
  sorry
