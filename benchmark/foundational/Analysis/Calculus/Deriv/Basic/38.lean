import Mathlib

lemma HasDerivAt.neg'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {f : 𝕜 → F} {f' : F} {x : 𝕜}
    (hf : HasDerivAt f f' x) :
    HasDerivAt (fun y => - f y) (- f') x := by
  sorry
