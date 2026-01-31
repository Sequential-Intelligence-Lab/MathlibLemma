import Mathlib

theorem fderivWithin_comp_left'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F G : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {g : F → G} {f : E → F}
    {s : Set E} {x : E}
    (hg : DifferentiableWithinAt 𝕜 g (f '' s) (f x))
    (hf : DifferentiableWithinAt 𝕜 f s x)
    (hs : UniqueDiffWithinAt 𝕜 s x) :
    fderivWithin 𝕜 (fun y => g (f y)) s x =
      fderivWithin 𝕜 g (f '' s) (f x) ∘L fderivWithin 𝕜 f s x := by
  sorry
