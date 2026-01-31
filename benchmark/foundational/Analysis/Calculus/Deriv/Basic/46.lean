import Mathlib

lemma HasDerivAt.const_add'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    (c : F) {f : 𝕜 → F} {f' : F} {x : 𝕜}
    (hf : HasDerivAt f f' x) :
    HasDerivAt (fun y => c + f y) f' x := by
  sorry
