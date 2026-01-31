import Mathlib


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology
/-- 68. `HasStrictFDerivAt` is invariant under postcomposition with linear equivalence. -/
lemma HasStrictFDerivAt.postcomp_equiv
    {f : E → F} {f' : E →L[𝕜] F}
    (L : F ≃L[𝕜] G) {x : E}
    (hf : HasStrictFDerivAt f f' x) :
    HasStrictFDerivAt (fun y : E => L (f y)) (L.toContinuousLinearMap.comp f') x := by
  sorry
