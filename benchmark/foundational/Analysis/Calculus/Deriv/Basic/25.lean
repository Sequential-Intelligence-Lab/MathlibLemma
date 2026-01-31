import Mathlib

lemma HasDerivWithinAt.inv'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {s : Set 𝕜} {x : 𝕜}
    {f : 𝕜 → 𝕜} {f' : 𝕜}
    (hf : HasDerivWithinAt f f' s x) (hx : f x ≠ 0) :
    HasDerivWithinAt (fun y => (f y)⁻¹) (- f' / (f x)^2) s x := by
  sorry
