import Mathlib

lemma derivWithin_empty
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    (f : 𝕜 → 𝕜) :
    derivWithin f (∅ : Set 𝕜) = fun _ => 0 := by
  sorry
