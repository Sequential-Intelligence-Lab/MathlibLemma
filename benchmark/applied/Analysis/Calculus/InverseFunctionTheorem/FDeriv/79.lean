import Mathlib


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology
/-- 80. If a map is strictly differentiable at `x` with derivative `f'`, then the derivative of
`fun y => f (x + y)` at `0` is `f'`. -/
lemma HasStrictFDerivAt.comp_add_right
    {f : E → F} {f' : E →L[𝕜] F}
    {x : E}
    (hf : HasStrictFDerivAt f f' x) :
    HasStrictFDerivAt (fun y => f (x + y)) f' 0 := by
  sorry
