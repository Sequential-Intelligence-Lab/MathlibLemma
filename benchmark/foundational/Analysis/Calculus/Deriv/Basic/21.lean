import Mathlib

lemma deriv_mul'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    (f g : 𝕜 → 𝕜) (x : 𝕜) :
    deriv (fun y => f y * g y) x = deriv f x * g x + f x * deriv g x := by
  sorry
