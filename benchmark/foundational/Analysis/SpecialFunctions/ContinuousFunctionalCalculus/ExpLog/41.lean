import Mathlib

lemma CFC.log_nonpos_of_le_one_real
  {A : Type*} [NormedRing A] [StarRing A] [PartialOrder A]
  [StarOrderedRing A] [NormedAlgebra ℝ A]
  [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
  {a : A} (ha : IsStrictlyPositive a) (h1 : a ≤ 1) :
  CFC.log a ≤ 0 := by
  sorry
