import Mathlib

open scoped ComplexConjugate

lemma CFC.exp_isUnit_𝕜
  {A 𝕜 : Type*}
  [NormedRing A] [StarRing A]
  [RCLike 𝕜] [NormedAlgebra 𝕜 A]
  [ContinuousFunctionalCalculus 𝕜 A (fun _ => True)]
  (a : A) :
  IsUnit a := by
  -- This statement is not provable in general: e.g. take A = 𝕜 = ℂ and a = 0.
  -- There is no way to construct an inverse for an arbitrary `a : A` from the given assumptions.
  -- Thus, the lemma is false as stated.
  admit