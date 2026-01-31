import Mathlib


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology
/-- 44. `HasStrictFDerivAt` is invariant under translation of the domain. -/
lemma HasStrictFDerivAt.comp_translate
    {f : E → F} {f' : E →L[𝕜] F}
    (a : E) {x : E}
    (hf : HasStrictFDerivAt f f' (x + a)) :
    HasStrictFDerivAt (fun y => f (y + a)) f' x := by
  sorry
