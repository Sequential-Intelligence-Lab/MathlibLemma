import Mathlib

lemma HasDerivAtFilter.smul_const'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {x : 𝕜} {L : Filter 𝕜}
    {f : 𝕜 → 𝕜} {f' : 𝕜} (c : F)
    (hf : HasDerivAtFilter f f' x L) :
    HasDerivAtFilter (fun y => f y • c) (f' • c) x L := by
  sorry
