import Mathlib


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology
/-- 22. Strict differentiability in product of two variables, in the first variable. -/
lemma HasStrictFDerivAt.fst_apply
    {f : E × F → G} {f' : E →L[𝕜] G} {x : E} {y : F}
    (h : HasStrictFDerivAt (fun p : E × F => f p) (f'.comp (ContinuousLinearMap.fst 𝕜 E F)) (x, y)) :
    HasStrictFDerivAt (fun x' : E => f (x', y)) f' x := by
  sorry
