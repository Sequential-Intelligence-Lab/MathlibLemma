import Mathlib

/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

/-! #### Rectangle / annulus / circle integral related lemmas -/

open Complex

lemma Complex.circleIntegral_map_linearIsometry
    (L : E →ₗᵢ[ℂ] F) (f : ℂ → E) (c : ℂ) (R : ℝ) :
    ∮ z in C(c, R), L (f z)
      =
      L (∮ z in C(c, R), f z) :=
by
  sorry