import Mathlib

lemma CFC.abs_mul_commute
    {A} [NonUnitalRing A] [StarRing A] [TopologicalSpace A]
    [Module ℝ A] [SMulCommClass ℝ A A] [IsScalarTower ℝ A A]
    [NonUnitalContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
    [PartialOrder A] [StarOrderedRing A] [NonnegSpectrumClass ℝ A]
    {a b : A} (h : IsStarNormal a) (h2 : Commute a b) :
    CFC.abs (a * b) = CFC.abs (b * a) := by
  sorry
