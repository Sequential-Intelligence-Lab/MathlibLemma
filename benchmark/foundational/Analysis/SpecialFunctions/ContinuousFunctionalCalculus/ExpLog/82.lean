import Mathlib

open scoped ComplexConjugate

lemma CFC.exp_isUnit_𝕜
  {A 𝕜 : Type*}
  [NormedRing A] [StarRing A]
  [RCLike 𝕜] [NormedAlgebra 𝕜 A]
  [ContinuousFunctionalCalculus 𝕜 A (fun _ => True)]
  (a : A) :
  IsUnit a := by
  sorry