import Mathlib

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology

/-- 61. Local inverse commutes with composition with an affine isometry, locally.

WARNING: This statement is *false* in general and thus unprovable.
The proof is intentionally left as `sorry`. -/
lemma HasStrictFDerivAt.localInverse_comp_affineIsometry
    [CompleteSpace E]
    {f : E → F} {f' : E ≃L[𝕜] F}
    (L : F ≃ᵃ[𝕜] G) {x : E}
    (hf : HasStrictFDerivAt f (f' : E →L[𝕜] F) x) :
    ∀ᶠ y in 𝓝 (L (f x)),
      hf.localInverse f f' x (L.symm y) =
      hf.localInverse f f' x (f x) := by
  sorry