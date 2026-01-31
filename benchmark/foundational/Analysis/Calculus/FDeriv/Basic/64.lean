import Mathlib

theorem DifferentiableOn.comp_hasFDerivWithinAt_left'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F G : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {g : F → G} {f : E → F}
    {s : Set E}
    (hg : DifferentiableOn 𝕜 g (f '' s))
    (hf : DifferentiableOn 𝕜 f s) :
    DifferentiableOn 𝕜 (fun y => g (f y)) s := by
  sorry
