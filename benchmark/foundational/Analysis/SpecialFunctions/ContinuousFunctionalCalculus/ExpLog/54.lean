import Mathlib

lemma CFC.exp_norm_bound
  {𝕜 A : Type*}
  [RCLike 𝕜]
  [NormedRing A] [StarRing A] [NormedAlgebra 𝕜 A]
  [ContinuousFunctionalCalculus 𝕜 A (fun _ => True)]
  (a : A) :
  ‖a‖ ≤ Real.exp ‖a‖ := by
  sorry