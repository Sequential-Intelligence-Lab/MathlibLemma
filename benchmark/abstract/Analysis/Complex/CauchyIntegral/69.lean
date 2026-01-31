import Mathlib


/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

/-! #### Rectangle / annulus / circle integral related lemmas -/
lemma Complex.closed_preimage_ray
    {f : ℂ → ℂ} (hf : Continuous f) (a : ℂ) :
    IsClosed (f ⁻¹' {z | a.re ≤ z.re}) :=
by
  sorry
