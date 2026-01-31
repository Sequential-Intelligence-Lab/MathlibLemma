import Mathlib

lemma CFC.log_inv
  {A : Type*} [NormedRing A] [StarRing A] [NormedAlgebra ℝ A]
  [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint] [GroupWithZero A]
  {a : A} (ha : IsSelfAdjoint a) (ha_spec : ∀ x ∈ spectrum ℝ a, x ≠ 0) :
  CFC.log a⁻¹ = - CFC.log a := by
  sorry
