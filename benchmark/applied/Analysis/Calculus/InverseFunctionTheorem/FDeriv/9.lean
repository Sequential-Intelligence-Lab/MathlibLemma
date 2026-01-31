import Mathlib


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology
/-- 10. Strict differentiability of `fun x => (f x, g x)` given strict differentiability of `f` and `g`. -/
lemma HasStrictFDerivAt.prod_mk
    {f : E → F} {g : E → G}
    {f' : E →L[𝕜] F} {g' : E →L[𝕜] G} {x : E}
    (hf : HasStrictFDerivAt f f' x)
    (hg : HasStrictFDerivAt g g' x) :
    HasStrictFDerivAt (fun y => (f y, g y))
      (f'.prod g') x := by
  sorry
