import Mathlib

theorem HasFDerivAt.comp_right_nhds
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E E' F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup E'] [NormedSpace 𝕜 E']
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {L : E →L[𝕜] E'} {f : E' → F} {f' : E' →L[𝕜] F}
    {x : E}
    (hf : HasFDerivAt f f' (L x)) :
    HasFDerivAt (fun y => f (L y)) (f'.comp L) x := by
  sorry
