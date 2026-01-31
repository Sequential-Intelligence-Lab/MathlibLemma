import Mathlib

lemma CFC.sqrt_isSelfAdjoint {A} [PartialOrder A] [NonUnitalRing A] [TopologicalSpace A]
  [StarRing A]
  [Module ℝ A] [SMulCommClass ℝ A A] [IsScalarTower ℝ A A]
  [StarOrderedRing A]
  [NonUnitalContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
  [NonnegSpectrumClass ℝ A] (a : A) :
    IsSelfAdjoint (CFC.sqrt a) := by
  sorry
