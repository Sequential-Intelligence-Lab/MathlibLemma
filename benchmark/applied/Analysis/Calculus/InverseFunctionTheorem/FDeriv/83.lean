import Mathlib


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology
/-- 84. `localInverse` preserves `f x` and strict differentiability along any line. -/
lemma HasStrictFDerivAt.localInverse_line_strict
    [CompleteSpace E]
    {f : E → F} {f' : E ≃L[𝕜] F}
    {x : E}
    (hf : HasStrictFDerivAt f (f' : E →L[𝕜] F) x) (v : F) :
    HasStrictDerivAt (fun t : 𝕜 => hf.localInverse f f' x (f x + t • v))
      (f'.symm v) 0 := by
  sorry
