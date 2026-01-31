import Mathlib

lemma HasDerivAt.smul_const'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {x : 𝕜} {f : 𝕜 → 𝕜} {f' : 𝕜} (c : F)
    (hf : HasDerivAt f f' x) :
    HasDerivAt (fun y => f y • c) (f' • c) x := by
  sorry
