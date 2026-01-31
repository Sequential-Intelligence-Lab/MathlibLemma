import Mathlib

/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

/-! #### Rectangle / annulus / circle integral related lemmas -/

open Complex

lemma Complex.circleIntegral_const_sub_inv
    (c w : ℂ) (R : ℝ) :
    ∮ z in C(c, R), (z - w)⁻¹ = ∮ z in C(0, R), (z - (w - c))⁻¹ :=
by
  sorry