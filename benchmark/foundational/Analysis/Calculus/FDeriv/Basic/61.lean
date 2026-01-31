import Mathlib

theorem fderiv_comp_left'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F G : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {g : F → G} {f : E → F}
    {x : E}
    (hg : DifferentiableAt 𝕜 g (f x))
    (hf : DifferentiableAt 𝕜 f x) :
    fderiv 𝕜 (fun y => g (f y)) x =
      fderiv 𝕜 g (f x) ∘L fderiv 𝕜 f x := by
  sorry
