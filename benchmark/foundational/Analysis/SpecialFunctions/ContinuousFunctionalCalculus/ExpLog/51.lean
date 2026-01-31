import Mathlib

lemma CFC.log_comp_hom_spectrum
  {A B : Type*} [NormedRing A] [StarRing A] [NormedAlgebra ℝ A]
  [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
  [NormedRing B] [StarRing B] [NormedAlgebra ℝ B]
  [ContinuousFunctionalCalculus ℝ B IsSelfAdjoint]
  (φ : A →⋆ₐ[ℝ] B) (a : A) :
  φ (CFC.log a) = CFC.log (φ a) := by
  sorry