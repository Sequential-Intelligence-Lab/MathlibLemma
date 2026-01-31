import Mathlib

lemma derivWithin_inter_self
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    (f : 𝕜 → 𝕜) (s : Set 𝕜) (x : 𝕜) :
    derivWithin f (s ∩ s) x = derivWithin f s x := by
  sorry
