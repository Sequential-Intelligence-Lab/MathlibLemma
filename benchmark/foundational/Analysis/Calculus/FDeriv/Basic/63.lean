import Mathlib

theorem Differentiable.comp_of_mem_closure
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F G : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {g : F → G} {f : E → F}
    (hg : Differentiable 𝕜 g)
    (hf : Differentiable 𝕜 f) :
    Differentiable 𝕜 fun y => g (f y) := by
  sorry
