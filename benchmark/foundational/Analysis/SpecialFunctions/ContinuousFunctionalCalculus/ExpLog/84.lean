import Mathlib

lemma CFC.log_map_starAlgHom_real
  {A B : Type*} [NormedRing A] [StarRing A] [NormedAlgebra ℝ A]
  [NormedRing B] [StarRing B] [NormedAlgebra ℝ B]
  [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
  [ContinuousFunctionalCalculus ℝ B IsSelfAdjoint]
  (φ : A →⋆ₐ[ℝ] B) (a : A) :
  φ (CFC.log a) = CFC.log (φ a) := by
  sorry
