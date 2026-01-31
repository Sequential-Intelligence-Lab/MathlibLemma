import Mathlib

lemma CFC.exp_real_algebraMap
  {A : Type*} [NormedRing A] [StarRing A]
  [NormedAlgebra ℝ A] [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
  (r : ℝ) :
  algebraMap ℝ A (Real.exp r) = algebraMap ℝ A (Real.exp r) := by
  sorry