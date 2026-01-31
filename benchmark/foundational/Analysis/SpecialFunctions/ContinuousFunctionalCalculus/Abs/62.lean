import Mathlib

noncomputable section

open scoped ComplexOrder

lemma CFC.abs_eq_sqrt_star_mul_self
    {A} [NonUnitalNormedRing A] [StarRing A] [CStarRing A]
    [PartialOrder A] [StarOrderedRing A]
    [Module ℝ A] [SMulCommClass ℝ A A] [IsScalarTower ℝ A A]
    [NonUnitalContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
    [NonnegSpectrumClass ℝ A]
    (a : A) :
    CFC.abs a = CFC.sqrt (star a * a) := by
  sorry