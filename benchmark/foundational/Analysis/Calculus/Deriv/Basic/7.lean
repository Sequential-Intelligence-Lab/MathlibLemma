import Mathlib

lemma deriv_comp_right'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {f : F → 𝕜} {g : 𝕜 → F} {x : 𝕜}
    (hf : HasFDerivAt f (fderiv 𝕜 f (g x)) (g x))
    (hg : HasDerivAt g (deriv g x) x) :
    deriv (fun y => f (g y)) x = (fderiv 𝕜 f (g x)) (deriv g x) := by
  sorry
