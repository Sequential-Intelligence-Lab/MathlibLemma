import Mathlib

lemma CFC.abs_eq_neg_of_nonpos
    {A} [NonUnitalRing A] [StarRing A]
    [TopologicalSpace A] [PartialOrder A] [StarOrderedRing A]
    [Module ℝ A] [SMulCommClass ℝ A A] [IsScalarTower ℝ A A]
    [NonUnitalContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
    [NonnegSpectrumClass ℝ A]
    {a : A} (ha : a ≤ 0) :
    CFC.abs a = -a := by
  sorry