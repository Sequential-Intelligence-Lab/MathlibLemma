import Mathlib

lemma CFC_exp_zero_𝕜
  {A : Type*} [NormedRing A] [StarRing A]
  {𝕜 : Type*} [RCLike 𝕜] [NormedAlgebra 𝕜 A]
  [ContinuousFunctionalCalculus 𝕜 A (fun _ => True)] :
  Real.exp 0 = (1 : ℝ) := by
  sorry