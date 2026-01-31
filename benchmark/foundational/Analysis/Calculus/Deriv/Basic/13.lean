import Mathlib

lemma HasDerivWithinAt.const_smul'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {s : Set 𝕜} {x : 𝕜}
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    (c : 𝕜) {f : 𝕜 → F} {f' : F}
    (hf : HasDerivWithinAt f f' s x) :
    HasDerivWithinAt (fun y => c • f y) (c • f') s x := by
  sorry
