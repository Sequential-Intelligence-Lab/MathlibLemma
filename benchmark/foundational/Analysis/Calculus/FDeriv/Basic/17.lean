import Mathlib

theorem HasFDerivWithinAt.comp_left_isometry
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F G : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {L : F ≃L[𝕜] G} {f : E → F} {f' : E →L[𝕜] F}
    {s : Set E} {x : E}
    (hf : HasFDerivWithinAt f f' s x) :
    HasFDerivWithinAt (fun y => L (f y)) ((L : F →L[𝕜] G).comp f') s x := by
  sorry
