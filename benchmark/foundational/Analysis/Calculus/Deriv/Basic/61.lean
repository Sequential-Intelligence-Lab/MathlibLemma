import Mathlib

lemma derivWithin_inter_eq_derivWithin_inter'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    (f : 𝕜 → 𝕜) (s t : Set 𝕜) (x : 𝕜) :
    derivWithin f (s ∩ t) x = derivWithin f (t ∩ s) x := by
  sorry
