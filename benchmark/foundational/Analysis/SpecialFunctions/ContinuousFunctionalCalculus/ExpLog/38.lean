import Mathlib

lemma CFC.log_one_real'
  {A : Type*} [NormedRing A] [StarRing A] [NormedAlgebra ℝ A]
  [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint] :
  CFC.log (1 : A) = 0 := by
  sorry
