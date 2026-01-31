import Mathlib


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology
/-- 73. Local inverse sends line segments near `f x` to curves differentiable at `0`. -/
lemma HasStrictFDerivAt.localInverse_lineHasDerivAt
    [CompleteSpace E]
    {f : E → F} {f' : E ≃L[𝕜] F}
    {x : E} {v : F}
    (hf : HasStrictFDerivAt f (f' : E →L[𝕜] F) x) :
    HasDerivAt (fun t : 𝕜 => hf.localInverse f f' x (f x + t • v))
      (f'.symm v) 0 := by
  sorry
