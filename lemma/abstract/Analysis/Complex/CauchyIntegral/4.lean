import Mathlib

/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

/-! #### Rectangle / annulus / circle integral related lemmas -/

namespace Complex

/-- A placeholder for the usual circle integral. This definition is only
to make the following lemma's statement compile; its body is `sorry`. -/
noncomputable
def circleIntegral (z₀ : ℂ) (R : ℝ) (f : ℂ → E) : E :=
  sorry

/-- Interaction lemma for circle integrals under translation isometries. -/
lemma circleIntegral_sub_center_inv_smul_isometry
    (f : ℂ → E) (c z₀ : ℂ) (R : ℝ) (h : Isometry fun z : ℂ => z + c) :
    circleIntegral z₀ R (fun z => (z - c)⁻¹ • f z)
      =
    circleIntegral (z₀ + c) R (fun z => (z - (c + c))⁻¹ • f (z - c)) :=
by
  sorry

end Complex