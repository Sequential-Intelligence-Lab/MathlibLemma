import Mathlib


/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

/-! #### Rectangle / annulus / circle integral related lemmas -/
lemma Set.Countable.image_of_analytic_zeroSet
    {f : ℂ → ℂ} (hf : AnalyticOn ℂ f Set.univ)
    (hne : f ≠ 0) :
    (f ⁻¹' {0}).Countable :=
by
  sorry
