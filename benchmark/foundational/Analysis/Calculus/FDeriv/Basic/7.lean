import Mathlib

theorem HasFDerivWithinAt.comp_right_nhdsWithin
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E E' F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup E'] [NormedSpace 𝕜 E']
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {L : E →L[𝕜] E'} {f : E' → F} {f' : E' →L[𝕜] F}
    {s : Set E} {x : E}
    (hf : HasFDerivWithinAt f f' (L '' s) (L x)) :
    HasFDerivWithinAt (fun y => f (L y)) (f'.comp L) s x := by
  sorry
