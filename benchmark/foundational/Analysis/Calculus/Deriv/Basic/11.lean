import Mathlib

lemma HasDerivAt.const_smul'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {x : 𝕜} (c : 𝕜) {f : 𝕜 → F} {f' : F}
    (hf : HasDerivAt f f' x) :
    HasDerivAt (fun y => c • f y) (c • f') x := by
  sorry
