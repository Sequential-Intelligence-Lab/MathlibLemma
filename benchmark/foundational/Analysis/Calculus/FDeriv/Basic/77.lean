import Mathlib

theorem DifferentiableAt.comp_continuousLinearMap_right
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {L : E →L[𝕜] E} {f : E → F} {x : E}
    (hf : DifferentiableAt 𝕜 f (L x)) :
    DifferentiableAt 𝕜 (fun y => f (L y)) x := by
  sorry
