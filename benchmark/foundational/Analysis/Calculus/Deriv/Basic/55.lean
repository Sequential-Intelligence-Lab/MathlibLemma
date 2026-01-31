import Mathlib

lemma derivWithin_comp_id'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    (f : 𝕜 → 𝕜) (s : Set 𝕜) (x : 𝕜) :
    derivWithin (fun y => f y) s x = derivWithin f s x := by
  sorry
