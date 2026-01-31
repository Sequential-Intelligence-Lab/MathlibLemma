import Mathlib

lemma CFC.log_monotone_on_positive
  {A : Type*} [NormedRing A] [StarRing A] [PartialOrder A]
  [StarOrderedRing A] [NormedAlgebra ℝ A]
  [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
  {a b : A} (ha : IsStrictlyPositive a) (hb : IsStrictlyPositive b)
  (h : a ≤ b) :
  CFC.log a ≤ CFC.log b := by
  sorry
