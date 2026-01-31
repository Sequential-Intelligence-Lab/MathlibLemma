import Mathlib

lemma CFC.log_nonneg_of_ge_one_real
  {A : Type*} [NormedRing A] [StarRing A] [PartialOrder A]
  [StarOrderedRing A] [NormedAlgebra ℝ A]
  [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
  {a : A} (ha : IsStrictlyPositive a) (h1 : 1 ≤ a) :
  0 ≤ CFC.log a := by
  sorry
