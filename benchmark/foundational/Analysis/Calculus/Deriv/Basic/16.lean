import Mathlib

lemma derivWithin_smul_const'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {s : Set 𝕜}
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    (f : 𝕜 → 𝕜) (c : F) :
    derivWithin (fun x => f x • c) s = fun x => derivWithin f s x • c := by
  sorry
