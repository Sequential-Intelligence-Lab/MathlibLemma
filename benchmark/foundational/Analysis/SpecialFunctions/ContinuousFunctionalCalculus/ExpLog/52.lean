import Mathlib

lemma CFC.exp_comp_hom_spectrum
  {𝕜 A B : Type*}
  [NormedField 𝕜] [RCLike 𝕜] [StarRing 𝕜] [ContinuousStar 𝕜]
  [NormedRing A] [StarRing A] [NormedAlgebra 𝕜 A]
  [NormedRing B] [StarRing B] [NormedAlgebra 𝕜 B]
  [ContinuousFunctionalCalculus 𝕜 A (fun _ => True)]
  [ContinuousFunctionalCalculus 𝕜 B (fun _ => True)]
  (φ : A →⋆ₐ[𝕜] B) (expA : A → A) (expB : B → B) (a : A) :
  φ (expA a) = expB (φ a) := by
  sorry