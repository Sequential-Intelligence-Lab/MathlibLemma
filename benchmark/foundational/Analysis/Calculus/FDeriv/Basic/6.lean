import Mathlib

theorem HasFDerivAt.comp_left_nhds
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {L : F →L[𝕜] F} {f : E → F} {f' : E →L[𝕜] F}
    {x : E}
    (hf : HasFDerivAt f f' x) :
    HasFDerivAt (fun y => L (f y)) (L.comp f') x := by
  sorry
