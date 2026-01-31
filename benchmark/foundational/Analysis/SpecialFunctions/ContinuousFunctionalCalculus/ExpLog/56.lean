import Mathlib

lemma CFC.exp_continuous_at
  {𝕜 A : Type*}
  [NormedField 𝕜] [RCLike 𝕜] [StarRing 𝕜] [ContinuousStar 𝕜]
  [NormedRing A] [StarRing A] [NormedAlgebra 𝕜 A]
  [ContinuousFunctionalCalculus 𝕜 A (fun _ => True)]
  (a : A) :
  ContinuousAt (fun x : A => x) a := by
  sorry