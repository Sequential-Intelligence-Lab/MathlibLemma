import Mathlib

open Set

theorem HasFDerivWithinAt.comp_tendsto_image_subset
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E E' F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup E'] [NormedSpace 𝕜 E']
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {s : Set E} {t : Set E'} {g : E → E'} {f : E' → F}
    {g' : E →L[𝕜] E'} {f' : E' →L[𝕜] F} {x : E}
    (hg : HasFDerivWithinAt g g' s x)
    (hf : HasFDerivWithinAt f f' (image g s) (g x))
    (hst : Set.MapsTo g s t) (ht : t ⊆ image g s) :
    HasFDerivWithinAt (fun y => f (g y)) (f'.comp g') s x := by
  sorry