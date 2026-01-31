import Mathlib

lemma CFC.abs_star_mul_self_le_abs_sq
    {A} [NonUnitalNormedRing A] [StarRing A] [CStarRing A]
    [Module ℝ A] [SMulCommClass ℝ A A] [IsScalarTower ℝ A A]
    [NonUnitalContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
    [PartialOrder A] [StarOrderedRing A] [NonnegSpectrumClass ℝ A]
    (a : A) :
    ‖star a * a‖ ≤ ‖CFC.abs a‖^2 := by
  sorry