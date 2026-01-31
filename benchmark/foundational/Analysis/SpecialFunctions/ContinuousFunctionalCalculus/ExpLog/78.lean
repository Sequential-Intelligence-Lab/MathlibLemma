import Mathlib

lemma CFC.log_inv_selfAdjoint_real
  {A : Type*} [NormedRing A] [StarRing A]
  [GroupWithZero A] [NormedAlgebra ℝ A]
  [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
  (a : A) (ha : IsSelfAdjoint a)
  (hz : ∀ x ∈ spectrum ℝ a, x ≠ 0) :
  CFC.log a⁻¹ = -CFC.log a := by
  sorry
