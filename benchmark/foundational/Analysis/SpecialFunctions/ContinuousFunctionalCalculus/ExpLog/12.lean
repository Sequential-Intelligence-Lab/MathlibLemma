import Mathlib

lemma CFC.log_commute_of_commute
  {A : Type*} [NormedRing A] [StarRing A] [NormedAlgebra ℝ A]
  [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
  {a b : A} (h : a * b = b * a) :
  CFC.log a * CFC.log b = CFC.log b * CFC.log a := by
  sorry
