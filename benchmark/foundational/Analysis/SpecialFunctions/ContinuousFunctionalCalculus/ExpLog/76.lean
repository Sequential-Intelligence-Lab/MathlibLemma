import Mathlib

lemma CFC.exp_strictlyPositive_real
  {A : Type*} [NormedRing A] [StarRing A]
  [PartialOrder A] [StarOrderedRing A] [NormedAlgebra ℝ A]
  [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
  {a : A} (ha : IsSelfAdjoint a) (expA : A) :
  IsStrictlyPositive expA := by
  sorry