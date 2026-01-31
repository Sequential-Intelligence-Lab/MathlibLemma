import Mathlib

theorem HasStrictFDerivAt.comp_hasStrictFDerivAt
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F G : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {f : F → G} {g : E → F} {f' : F →L[𝕜] G} {g' : E →L[𝕜] F}
    {x : E}
    (hf : HasStrictFDerivAt f f' (g x))
    (hg : HasStrictFDerivAt g g' x) :
    HasStrictFDerivAt (fun y => f (g y)) (f'.comp g') x := by
  sorry
