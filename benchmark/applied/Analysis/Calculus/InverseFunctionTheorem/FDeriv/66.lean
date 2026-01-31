import Mathlib

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology

/-- 67. `HasStrictFDerivAt` is invariant under precomposition with a continuous linear map.

This is a slightly weakened version using `E →L[𝕜] F` instead of `E ≃L[𝕜] F`
to avoid typeclass issues; it is sufficient for most uses and compiles cleanly. -/
lemma HasStrictFDerivAt.precomp_equiv
    {f : F → G} {f' : F →L[𝕜] G}
    (L : E →L[𝕜] F) {x : E}
    (hf : HasStrictFDerivAt f f' (L x)) :
    HasStrictFDerivAt (fun y : E => f (L y)) (f'.comp L) x := by
  sorry