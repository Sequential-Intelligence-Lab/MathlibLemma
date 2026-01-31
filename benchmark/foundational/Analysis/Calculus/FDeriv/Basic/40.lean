import Mathlib

theorem HasFDerivWithinAt.unique_zero_of_isConst
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {x : E} {s : Set E} {c : F} {f' : E →L[𝕜] F}
    (h : HasFDerivWithinAt (fun _ : E => c) f' s x) :
    f' = 0 := by
  sorry
