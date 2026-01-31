import Mathlib

/-
The lemma as stated is not provable: `expA` and `expB` are arbitrary functions
`A → A` and `B → B` with no constraints. The conclusion

  φ (expA a) = expB (φ a)

is therefore false in general, and Lean cannot construct a proof of it.

To make this lemma true and provable, `expA` and `expB` must be fixed to be the
canonical exponentials provided by the continuous functional calculus on `A`
and `B`, and then one can apply the standard naturality lemma of the continuous
functional calculus under a `⋆`-algebra homomorphism.

As long as `expA` and `expB` remain arbitrary arguments, there is no proof;
any attempt to fill in the `sorry` below would be unsound.
-/

lemma CFC.exp_comp_hom_spectrum
  {𝕜 A B : Type*}
  [NormedField 𝕜] [RCLike 𝕜] [StarRing 𝕜] [ContinuousStar 𝕜]
  [NormedRing A] [StarRing A] [NormedAlgebra 𝕜 A]
  [NormedRing B] [StarRing B] [NormedAlgebra 𝕜 B]
  [ContinuousFunctionalCalculus 𝕜 A (fun _ => True)]
  [ContinuousFunctionalCalculus 𝕜 B (fun _ => True)]
  (φ : A →⋆ₐ[𝕜] B) (expA : A → A) (expB : B → B) (a : A) :
  φ (expA a) = expB (φ a) := by
  /-
  This goal is not derivable from the given hypotheses because `expA` and `expB`
  are completely arbitrary functions. For the intended statement about the
  exponential coming from the continuous functional calculus, `expA` and `expB`
  should not be arguments, but specific definitions, and one should then invoke
  the naturality of the functional calculus under `φ`.
  -/
  sorry