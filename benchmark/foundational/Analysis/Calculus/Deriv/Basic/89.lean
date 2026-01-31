import Mathlib

lemma derivWithin_eq_zero_of_subsingleton_domain
    {𝕜 : Type*} [NontriviallyNormedField 𝕜] [Subsingleton 𝕜]
    (f : 𝕜 → 𝕜) (s : Set 𝕜) :
    derivWithin f s = fun _ => 0 := by
  sorry
