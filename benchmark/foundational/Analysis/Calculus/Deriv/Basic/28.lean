import Mathlib

lemma HasDerivAtFilter.div'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {x : 𝕜} {L : Filter 𝕜}
    {f g : 𝕜 → 𝕜} {f' g' : 𝕜}
    (hf : HasDerivAtFilter f f' x L)
    (hg : HasDerivAtFilter g g' x L)
    (hx : g x ≠ 0) :
    HasDerivAtFilter (fun y => f y / g y)
      ((f' * g x - f x * g') / (g x)^2) x L := by
  sorry
