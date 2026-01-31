import Mathlib

lemma derivWithin_neg'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    (f : 𝕜 → F) (s : Set 𝕜) :
    derivWithin (fun x => - f x) s = fun x => - derivWithin f s x := by
  sorry
