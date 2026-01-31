import Mathlib

theorem HasStrictFDerivAt.comp_right_isometry
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F G : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {L : E ≃L[𝕜] F} {f : F → G} {f' : F →L[𝕜] G} {x : E}
    (hf : HasStrictFDerivAt f f' (L x)) :
    HasStrictFDerivAt (fun y => f (L y)) (f'.comp (L : E →L[𝕜] F)) x := by
  sorry
