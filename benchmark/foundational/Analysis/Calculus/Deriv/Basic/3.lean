import Mathlib

lemma HasDerivAt.comp_left
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F G : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F] [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {f : 𝕜 → F} {g : 𝕜 → 𝕜} {x : 𝕜} {f' : F} {g' : 𝕜}
    (hf : HasDerivAt f f' (g x)) (hg : HasDerivAt g g' x) :
    HasDerivAt (fun y => f (g y)) (g' • f') x := by
  sorry
