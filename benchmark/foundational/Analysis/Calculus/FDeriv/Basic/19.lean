import Mathlib

theorem Differentiable.comp_left_isometry
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F G : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {L : F ≃L[𝕜] G} {f : E → F}
    (hf : Differentiable 𝕜 f) :
    Differentiable 𝕜 fun y => L (f y) := by
  sorry
