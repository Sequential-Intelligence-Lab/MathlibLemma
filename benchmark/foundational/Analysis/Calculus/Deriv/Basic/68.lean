import Mathlib

lemma HasDerivAt.comp_affine'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    (a b : 𝕜) {f : 𝕜 → 𝕜} {f' : 𝕜} {x : 𝕜}
    (hf : HasDerivAt f f' (a * x + b)) :
    HasDerivAt (fun y => f (a * y + b)) (a * f') x := by
  sorry
