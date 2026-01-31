import Mathlib

theorem HasFDerivWithinAt.comp_tendsto'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E E' F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup E'] [NormedSpace 𝕜 E']
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {f : E' → F} {g : E → E'} {f' : E' →L[𝕜] F} {g' : E →L[𝕜] E'}
    {s : Set E} {x : E}
    (hf : HasFDerivWithinAt f f' (g '' s) (g x))
    (hg : HasFDerivWithinAt g g' s x)
    (hmaps : Set.MapsTo g s (g '' s)) :
    HasFDerivWithinAt (fun y => f (g y)) (f'.comp g') s x := by
  sorry