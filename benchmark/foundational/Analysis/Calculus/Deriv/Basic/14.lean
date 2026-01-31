import Mathlib

lemma deriv_smul_const'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    (f : 𝕜 → 𝕜) (c : F) :
    deriv (fun x => f x • c) = fun x => deriv f x • c := by
  sorry
