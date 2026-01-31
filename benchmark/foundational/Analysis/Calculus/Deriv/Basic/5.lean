import Mathlib

lemma HasDerivAt.comp_right'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {f : F → 𝕜} {g : 𝕜 → F} {x : 𝕜} {f' : F →L[𝕜] 𝕜} {g' : F}
    (hf : HasFDerivAt f f' (g x))
    (hg : HasDerivAt g g' x) :
    HasDerivAt (fun y => f (g y)) (f' g') x := by
  sorry
