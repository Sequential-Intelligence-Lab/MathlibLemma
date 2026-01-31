import Mathlib

lemma HasDerivAtFilter.inv'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {x : 𝕜} {L : Filter 𝕜}
    {f : 𝕜 → 𝕜} {f' : 𝕜}
    (hf : HasDerivAtFilter f f' x L) (hx : f x ≠ 0) :
    HasDerivAtFilter (fun y => (f y)⁻¹) (- f' / (f x)^2) x L := by
  sorry
