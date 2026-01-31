import Mathlib

lemma HasDerivAt.comp_hasFDerivAt'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F G : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {f : 𝕜 → F} {g : F → G} {f' : F} {g' : F →L[𝕜] G}
    {x : 𝕜}
    (hg : HasFDerivAt g g' (f x))
    (hf : HasDerivAt f f' x) :
    HasDerivAt (fun y => g (f y)) (g' f') x := by
  sorry
