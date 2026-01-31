import Mathlib

lemma CFC.abs_le_of_star_mul_self_le
    {A} [NormedRing A] [StarRing A] [CStarRing A]
    [NormedAlgebra ℂ A] [PartialOrder A] [StarOrderedRing A]
    [NonUnitalContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
    [SMulCommClass ℝ A A] [NonnegSpectrumClass ℝ A]
    {a b : A} (h : star a * a ≤ star b * b) :
    ‖CFC.abs a‖ ≤ ‖CFC.abs b‖ := by
  sorry