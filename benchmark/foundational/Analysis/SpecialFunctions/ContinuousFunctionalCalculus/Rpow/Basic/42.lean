import Mathlib

lemma CFC.sqrt_pow_two {A} [PartialOrder A] [NonUnitalRing A] [TopologicalSpace A] [StarRing A]
  [Module ℝ A] [SMulCommClass ℝ A A] [IsScalarTower ℝ A A] [StarOrderedRing A]
  [NonUnitalContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
  [NonnegSpectrumClass ℝ A] [HPow A ℕ A] (a : A) :
    CFC.sqrt (a * a) = CFC.sqrt (a ^ (2 : ℕ)) := by
  sorry