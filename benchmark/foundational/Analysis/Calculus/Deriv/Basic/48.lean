import Mathlib

lemma derivWithin_const_add'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    (c : F) (f : 𝕜 → F) (s : Set 𝕜) :
    derivWithin (fun x => c + f x) s = fun x => derivWithin f s x := by
  sorry
