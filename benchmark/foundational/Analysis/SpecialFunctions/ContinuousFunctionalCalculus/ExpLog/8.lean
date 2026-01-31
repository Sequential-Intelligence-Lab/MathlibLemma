import Mathlib

lemma CFC.log_smul_real'
  {A : Type*} [NormedRing A] [StarRing A]
  [NormedAlgebra ℝ A] [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
  {r : ℝ} (a : A) (hr : 0 < r)
  (ha_spec : ∀ x ∈ spectrum ℝ a, 0 < x) :
  CFC.log (r • a) = algebraMap ℝ A (Real.log r) + CFC.log a := by
  sorry
