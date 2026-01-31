import Mathlib

theorem HasFDerivAtFilter.comp_const_right_filter'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F G : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {c : E} {f : G → F} {x : G} {L : Filter G}
    {f' : G →L[𝕜] F} :
    HasFDerivAtFilter f f' x L →
    HasFDerivAtFilter (fun y : G => (fun _ : E => c) (c)) (0 : G →L[𝕜] E) x L := by
  sorry
