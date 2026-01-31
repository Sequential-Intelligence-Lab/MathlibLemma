import Mathlib

lemma hasDerivAtFilter_comp_tendsto
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F G : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {f : 𝕜 → F} {g : F → G} {f' : F} {g' : F →L[𝕜] G}
    {x : 𝕜} {L : Filter 𝕜}
    (hg : HasFDerivAt g g' (f x))
    (hf : HasDerivAtFilter f f' x L)
    (hL : Filter.Tendsto f L (nhds (f x))) :
    HasDerivAtFilter (fun y => g (f y)) (g' f') x L := by
  sorry