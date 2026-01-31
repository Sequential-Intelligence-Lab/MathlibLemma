import Mathlib

lemma HasDerivAt.mul'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {x : 𝕜}
    {f g : 𝕜 → 𝕜} {f' g' : 𝕜}
    (hf : HasDerivAt f f' x)
    (hg : HasDerivAt g g' x) :
    HasDerivAt (fun y => f y * g y) (f' * g x + f x * g') x := by
  sorry
