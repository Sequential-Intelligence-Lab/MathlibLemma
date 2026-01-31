import Mathlib

namespace ContinuousFunctionalCalculus

variable {A : Type*} [NormedRing A] [StarRing A] [CStarRing A]

/-- Dummy absolute value for the purpose of type-checking the lemma below. -/
@[simp] def abs (a : A) : A := a

end ContinuousFunctionalCalculus

open ContinuousFunctionalCalculus

lemma CFC_abs_star_mul_self_le_abs_mul_abs
    {A : Type*} [NormedRing A] [StarRing A] [CStarRing A] [NormedAlgebra ℂ A]
    (a : A) :
    ‖star a * a‖ ≤
      ‖ContinuousFunctionalCalculus.abs a *
        ContinuousFunctionalCalculus.abs a‖ := by
  sorry