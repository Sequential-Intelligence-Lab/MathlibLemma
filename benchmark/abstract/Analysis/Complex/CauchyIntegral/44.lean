import Mathlib


/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

/-! #### Rectangle / annulus / circle integral related lemmas -/
lemma Set.Countable.preimage_analytic_fiber_sub
    {f : ℂ → ℂ} (hf : AnalyticOn ℂ f Set.univ)
    (g : ℂ → ℂ) (hg : AnalyticOn ℂ g Set.univ) (hne : f ≠ g) :
    ({z | f z = g z}).Countable :=
by
  sorry

/-! #### Integration / measurability lemmas on ℂ -/
