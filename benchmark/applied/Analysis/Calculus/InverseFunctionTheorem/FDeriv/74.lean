import Mathlib


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology
/-- 75. If `f` is strictly differentiable at `x` and `g` is strictly differentiable at `f x`,
then the chain rule for strict derivative holds. -/
lemma HasStrictFDerivAt.comp_chain
    {f : E → F} {g : F → G}
    {f' : E →L[𝕜] F} {g' : F →L[𝕜] G}
    {x : E}
    (hf : HasStrictFDerivAt f f' x)
    (hg : HasStrictFDerivAt g g' (f x)) :
    HasStrictFDerivAt (fun y => g (f y)) (g'.comp f') x := by
  sorry
