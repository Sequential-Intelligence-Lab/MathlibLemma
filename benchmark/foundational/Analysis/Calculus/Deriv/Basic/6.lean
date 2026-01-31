import Mathlib

lemma deriv_comp_left'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {f g : 𝕜 → 𝕜} {x : 𝕜}
    (hf : DifferentiableAt 𝕜 f (g x)) (hg : DifferentiableAt 𝕜 g x) :
    deriv (fun y => f (g y)) x = deriv f (g x) * deriv g x := by
  sorry
