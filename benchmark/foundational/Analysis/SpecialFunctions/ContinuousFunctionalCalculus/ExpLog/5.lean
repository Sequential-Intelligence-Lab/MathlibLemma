import Mathlib

lemma CFC.log_conj
  {A : Type*} [NormedRing A] [StarRing A] [NormedAlgebra ℝ A]
  [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint] [NormedRing B] [StarRing B]
  {a : A} {u : A} (hu : IsUnit u) :
  CFC.log (u * a * ↑(hu.unit)⁻¹) =
    u * CFC.log a * ↑(hu.unit)⁻¹ := by
  sorry
