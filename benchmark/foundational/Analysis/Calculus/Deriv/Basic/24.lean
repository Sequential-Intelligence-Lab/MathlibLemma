import Mathlib

lemma HasDerivAt.inv'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {x : 𝕜}
    {f : 𝕜 → 𝕜} {f' : 𝕜}
    (hf : HasDerivAt f f' x) (hx : f x ≠ 0) :
    HasDerivAt (fun y => (f y)⁻¹) (- f' / (f x)^2) x := by
  sorry
