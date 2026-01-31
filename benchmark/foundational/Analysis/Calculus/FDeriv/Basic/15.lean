import Mathlib

theorem HasStrictFDerivAt.comp_left_isometry
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F G : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {L : F ≃L[𝕜] G} {f : E → F} {f' : E →L[𝕜] F} {x : E}
    (hf : HasStrictFDerivAt f f' x) :
    HasStrictFDerivAt (fun y => L (f y)) ((L : F →L[𝕜] G).comp f') x := by
  sorry
