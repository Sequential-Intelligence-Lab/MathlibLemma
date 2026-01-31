import Mathlib

lemma HasDerivWithinAt.smul_const'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {s : Set 𝕜} {x : 𝕜}
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {f : 𝕜 → 𝕜} {f' : 𝕜} (c : F)
    (hf : HasDerivWithinAt f f' s x) :
    HasDerivWithinAt (fun y => f y • c) (f' • c) s x := by
  sorry
