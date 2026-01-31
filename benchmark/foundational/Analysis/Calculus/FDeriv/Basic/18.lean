import Mathlib

theorem HasFDerivWithinAt.comp_right_isometry
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F G : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {L : E ≃L[𝕜] F} {f : F → G} {f' : F →L[𝕜] G}
    {s : Set E} {x : E}
    (hf : HasFDerivWithinAt f f' (L '' s) (L x)) :
    HasFDerivWithinAt (fun y => f (L y)) (f'.comp (L : E →L[𝕜] F)) s x := by
  sorry
