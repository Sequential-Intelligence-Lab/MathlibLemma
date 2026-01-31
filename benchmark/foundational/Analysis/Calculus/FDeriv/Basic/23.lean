import Mathlib

theorem fderivWithin_comp_right_isometry
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F G : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {L : E ≃L[𝕜] F} {f : F → G}
    {s : Set E} {x : E}
    (hf : DifferentiableWithinAt 𝕜 f (L '' s) (L x))
    (hs : UniqueDiffWithinAt 𝕜 s x) :
    fderivWithin 𝕜 (fun y => f (L y)) s x =
      fderivWithin 𝕜 f (L '' s) (L x) ∘L (L : E →L[𝕜] F) := by
  sorry
