import Mathlib

lemma HasDerivAt.div'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {x : 𝕜}
    {f g : 𝕜 → 𝕜} {f' g' : 𝕜}
    (hf : HasDerivAt f f' x)
    (hg : HasDerivAt g g' x)
    (hx : g x ≠ 0) :
    HasDerivAt (fun y => f y / g y)
      ((f' * g x - f x * g') / (g x)^2) x := by
  sorry
