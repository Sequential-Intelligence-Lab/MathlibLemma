import Mathlib


/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

/-! #### Rectangle / annulus / circle integral related lemmas -/
lemma Set.Countable.preimage_analytic_zeroSet
    {f : ℂ → E} {g : E → ℂ}
    (hf : AnalyticOn ℂ f Set.univ)
    (hg : Continuous g)
    (hcomp : AnalyticOn ℂ (fun z => g (f z)) Set.univ)
    (hne : (fun z => g (f z)) ≠ 0) :
    ((fun z => g (f z)) ⁻¹' {0}).Countable :=
by
  sorry
