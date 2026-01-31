import Mathlib

theorem HasFDerivWithinAt.comp_hasStrictFDerivAt_left
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F G : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {f : F → G} {g : E → F} {f' : F →L[𝕜] G} {g' : E →L[𝕜] F}
    {s : Set E} {x : E}
    (hf : HasStrictFDerivAt f f' (g x))
    (hg : HasFDerivWithinAt g g' s x) :
    HasFDerivWithinAt (fun y => f (g y)) (f'.comp g') s x := by
  sorry
