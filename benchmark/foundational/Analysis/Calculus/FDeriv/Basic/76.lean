import Mathlib

theorem DifferentiableAt.comp_continuousLinearMap_left
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {L : F →L[𝕜] F} {f : E → F} {x : E}
    (hf : DifferentiableAt 𝕜 f x) :
    DifferentiableAt 𝕜 (fun y => L (f y)) x := by
  sorry
