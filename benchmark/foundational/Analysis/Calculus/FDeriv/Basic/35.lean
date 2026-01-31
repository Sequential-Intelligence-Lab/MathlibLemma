import Mathlib

theorem HasFDerivAtFilter.comp_right'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F G : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {f : F → G} {x : E} {L : Filter E}
    {f' : F →L[𝕜] G} {g : E → F} {g' : E →L[𝕜] F}
    (hf : HasFDerivAtFilter g g' x L)
    (hg : HasFDerivAt f f' (g x)) :
    HasFDerivAtFilter (fun y => f (g y)) (f'.comp g') x L := by
  sorry
