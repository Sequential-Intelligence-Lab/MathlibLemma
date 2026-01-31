import Mathlib

lemma HasDerivWithinAt.add_const'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {s : Set 𝕜} {f : 𝕜 → F} {f' : F} {x : 𝕜} (c : F)
    (hf : HasDerivWithinAt f f' s x) :
    HasDerivWithinAt (fun y => f y + c) f' s x := by
  sorry
