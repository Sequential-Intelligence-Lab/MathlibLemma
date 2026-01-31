import Mathlib


/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

/-! #### Rectangle / annulus / circle integral related lemmas -/
lemma Complex.measurable_add_real_smul_I :
    Measurable fun p : ℝ × ℝ => (p.1 + p.2 * Complex.I) :=
by
  sorry
