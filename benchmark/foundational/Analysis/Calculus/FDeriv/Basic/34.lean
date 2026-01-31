import Mathlib

theorem HasFDerivAtFilter.comp_left'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F G : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {f : E → F} {x : E} {L : Filter E}
    {f' : E →L[𝕜] F} {g : F → G} {g' : F →L[𝕜] G}
    (hf : HasFDerivAtFilter f f' x L)
    (hg : HasFDerivAt g g' (f x)) :
    HasFDerivAtFilter (fun y => g (f y)) (g'.comp f') x L := by
  sorry
