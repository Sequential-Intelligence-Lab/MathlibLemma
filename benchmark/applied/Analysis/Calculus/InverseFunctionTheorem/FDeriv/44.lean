import Mathlib


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology
/-- 45. `HasStrictFDerivAt` is invariant under translation of the codomain. -/
lemma HasStrictFDerivAt.translate
    {f : E → F} {f' : E →L[𝕜] F}
    (b : F) {x : E}
    (hf : HasStrictFDerivAt f f' x) :
    HasStrictFDerivAt (fun y => f y + b) f' x := by
  sorry
