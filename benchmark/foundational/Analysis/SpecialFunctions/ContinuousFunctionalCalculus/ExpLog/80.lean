import Mathlib

lemma CFC.log_inv_natCast_smul
  {A : Type*} [NormedRing A] [StarRing A]
  [GroupWithZero A] [NormedAlgebra ℝ A]
  [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
  (a : A) (n : ℕ) (ha : IsSelfAdjoint a)
  (hz : ∀ x ∈ spectrum ℝ a, x ≠ 0) :
  CFC.log (a ^ n)⁻¹ = -(n : ℝ) • CFC.log a := by
  sorry
