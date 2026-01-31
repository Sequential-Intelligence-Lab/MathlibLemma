import Mathlib

lemma HasDerivAt.add_const'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {f : 𝕜 → F} {f' : F} {x : 𝕜} (c : F)
    (hf : HasDerivAt f f' x) :
    HasDerivAt (fun y => f y + c) f' x := by
  sorry
