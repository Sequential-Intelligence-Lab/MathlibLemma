import Mathlib

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology

/-- 30. Equivalence between strict derivative of `f` and strict derivative of local inverse. -/
lemma HasStrictFDerivAt_iff_localInverse
    [CompleteSpace E]
    {f : E → F} {f' : E ≃L[𝕜] F} {x : E}
    (hf : HasStrictFDerivAt f (f' : E →L[𝕜] F) x) :
    HasStrictFDerivAt f (f' : E →L[𝕜] F) x
      ↔ HasStrictFDerivAt (HasStrictFDerivAt.localInverse f f' x hf)
          (f'.symm : F →L[𝕜] E) (f x) := by
  sorry