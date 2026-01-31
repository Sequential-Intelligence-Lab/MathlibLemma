import Mathlib

lemma deriv_comp_affine'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    (a b : 𝕜) (f : 𝕜 → 𝕜) :
    deriv (fun x => f (a * x + b)) =
      fun x => a * deriv f (a * x + b) := by
  sorry
