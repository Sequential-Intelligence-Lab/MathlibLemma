import Mathlib

lemma HasDerivWithinAt.div'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {s : Set 𝕜} {x : 𝕜}
    {f g : 𝕜 → 𝕜} {f' g' : 𝕜}
    (hf : HasDerivWithinAt f f' s x)
    (hg : HasDerivWithinAt g g' s x)
    (hx : g x ≠ 0) :
    HasDerivWithinAt (fun y => f y / g y)
      ((f' * g x - f x * g') / (g x)^2) s x := by
  sorry
