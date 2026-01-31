import Mathlib

lemma HasDerivWithinAt.neg'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {s : Set 𝕜} {x : 𝕜} {f : 𝕜 → F} {f' : F}
    (hf : HasDerivWithinAt f f' s x) :
    HasDerivWithinAt (fun y => - f y) (- f') s x := by
  sorry
