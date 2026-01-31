import Mathlib

lemma CFC.exp_real_algebraMap_subsingleton
  {A : Type*} [NormedRing A] [Subsingleton A] [StarRing A]
  [NormedAlgebra ℝ A] (r : ℝ) :
  algebraMap ℝ A (Real.exp r) = 0 := by
  sorry