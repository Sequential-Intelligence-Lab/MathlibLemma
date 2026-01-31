import Mathlib

theorem fderiv_comp_right_isometry
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F G : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {L : E ≃L[𝕜] F} {f : F → G}
    {x : E}
    (hf : DifferentiableAt 𝕜 f (L x)) :
    fderiv 𝕜 (fun y => f (L y)) x = fderiv 𝕜 f (L x) ∘L (L : E →L[𝕜] F) := by
  sorry
