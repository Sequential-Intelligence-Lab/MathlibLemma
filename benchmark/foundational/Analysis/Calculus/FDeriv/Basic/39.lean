import Mathlib

theorem HasFDerivAt.unique_zero_of_isConst
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {x : E} {c : F} {f' : E →L[𝕜] F}
    (h : HasFDerivAt (fun _ : E => c) f' x) :
    f' = 0 := by
  sorry
