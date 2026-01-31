import Mathlib

lemma derivWithin_univ_eq_deriv'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    (f : 𝕜 → 𝕜) (x : 𝕜) :
    derivWithin f Set.univ x = deriv f x := by
  sorry
