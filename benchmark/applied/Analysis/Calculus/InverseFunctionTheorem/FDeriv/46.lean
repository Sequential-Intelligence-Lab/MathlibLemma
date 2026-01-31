import Mathlib

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology

/-- 47. Strict derivative with bilinear map in two variables. -/
lemma HasStrictFDerivAt.bilinear
    {f : E → F} {g : E → G}
    {B : F →L[𝕜] G →L[𝕜] H}
    {f' : E →L[𝕜] F} {g' : E →L[𝕜] G} {x : E}
    (hf : HasStrictFDerivAt f f' x) (hg : HasStrictFDerivAt g g' x) :
    HasStrictFDerivAt (fun y => B (f y) (g y))
      ((B (f x)).comp g' + (B.flip (g x)).comp f') x := by
  sorry