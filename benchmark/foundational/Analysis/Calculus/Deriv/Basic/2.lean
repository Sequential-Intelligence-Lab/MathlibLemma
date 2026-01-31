import Mathlib

lemma HasDerivWithinAt.comp_hasFDerivWithinAt'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F G : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {f : 𝕜 → F} {g : F → G} {f' : F} {g' : F →L[𝕜] G}
    {x : 𝕜} {s : Set 𝕜}
    (hg : HasFDerivWithinAt g g' (f '' s) (f x))
    (hf : HasDerivWithinAt f f' s x) :
    HasDerivWithinAt (fun y => g (f y)) (g' f') s x := by
  sorry
