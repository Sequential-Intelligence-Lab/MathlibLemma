import Mathlib

theorem HasFDerivWithinAt.comp_hasStrictFDerivAt_right
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F G : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {f : F → G} {g : E → F} {f' : F →L[𝕜] G} {g' : E →L[𝕜] F}
    {s : Set E} {x : E}
    (hf : HasFDerivWithinAt f f' (g '' s) (g x))
    (hg : HasStrictFDerivAt g g' x)
    (hmem : Set.MapsTo g s (g '' s)) :
    HasFDerivWithinAt (fun y => f (g y)) (f'.comp g') s x := by
  sorry