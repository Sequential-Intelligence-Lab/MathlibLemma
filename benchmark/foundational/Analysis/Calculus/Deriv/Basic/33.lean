import Mathlib

lemma HasDerivAtFilter.pow'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {x : 𝕜} {L : Filter 𝕜} {n : ℕ}
    {f : 𝕜 → 𝕜} {f' : 𝕜}
    (hf : HasDerivAtFilter f f' x L) :
    HasDerivAtFilter (fun y => (f y)^n) (n * (f x)^(n-1) * f') x L := by
  sorry
