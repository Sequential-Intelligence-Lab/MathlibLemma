import Mathlib

lemma HasDerivAtFilter.const_smul'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {x : 𝕜} {L : Filter 𝕜}
    (c : 𝕜) {f : 𝕜 → F} {f' : F}
    (hf : HasDerivAtFilter f f' x L) :
    HasDerivAtFilter (fun y => c • f y) (c • f') x L := by
  sorry
