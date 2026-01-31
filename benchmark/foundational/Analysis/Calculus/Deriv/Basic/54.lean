import Mathlib

lemma deriv_comp_id'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    (f : 𝕜 → 𝕜) (x : 𝕜) :
    deriv (fun y => f y) x = deriv f x := by
  sorry
