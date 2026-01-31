import Mathlib

theorem HasFDerivWithinAt.comp_left_nhdsWithin
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E E' F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup E'] [NormedSpace 𝕜 E']
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {L : F →L[𝕜] F} {f : E → F} {f' : E →L[𝕜] F}
    {s : Set E} {x : E}
    (hf : HasFDerivWithinAt f f' s x) :
    HasFDerivWithinAt (fun y => L (f y)) (L.comp f') s x := by
  sorry
