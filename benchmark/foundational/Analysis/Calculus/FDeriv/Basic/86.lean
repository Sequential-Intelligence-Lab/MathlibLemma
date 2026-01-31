import Mathlib

theorem HasFDerivAtFilter.comp_const_left_filter'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F G : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {c : F} {f : G → E} {x : G} {L : Filter G}
    {f' : G →L[𝕜] E} :
    HasFDerivAtFilter f f' x L →
    HasFDerivAtFilter (fun y : G => (fun _ : F => c) (c)) (0 : G →L[𝕜] F) x L := by
  sorry
