import Mathlib

theorem HasFDerivAt.comp_const_left'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F G : Type*}
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {c : F} {x : G} :
    HasFDerivAt (fun _ : G => c) (0 : G →L[𝕜] F) x := by
  sorry