import Mathlib

theorem HasFDerivAt.comp_tendsto'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E E' F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup E'] [NormedSpace 𝕜 E']
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {f : E' → F} {g : E → E'} {f' : E' →L[𝕜] F} {g' : E →L[𝕜] E'}
    {x : E}
    (hf : HasFDerivAt f f' (g x))
    (hg : HasFDerivAt g g' x) :
    HasFDerivAt (fun y => f (g y)) (f'.comp g') x := by
  sorry
