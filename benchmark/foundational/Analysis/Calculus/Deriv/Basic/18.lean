import Mathlib

lemma HasDerivAtFilter.mul'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {x : 𝕜} {L : Filter 𝕜}
    {f g : 𝕜 → 𝕜} {f' g' : 𝕜}
    (hf : HasDerivAtFilter f f' x L)
    (hg : HasDerivAtFilter g g' x L) :
    HasDerivAtFilter (fun y => f y * g y) (f' * g x + f x * g') x L := by
  sorry
