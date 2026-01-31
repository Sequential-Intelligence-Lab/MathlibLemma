import Mathlib


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology
/-- 49. Strict derivative of a composition with a bounded linear functional into `𝕜`. -/
lemma HasStrictFDerivAt.comp_isROrC
    {f : E → 𝕜} {f' : E →L[𝕜] 𝕜}
    {g : 𝕜 → F} {g' : 𝕜 →L[𝕜] F}
    {x : E}
    (hg : HasStrictFDerivAt g g' (f x))
    (hf : HasStrictFDerivAt f f' x) :
    HasStrictFDerivAt (fun y => g (f y)) (g'.comp f') x := by
  sorry
