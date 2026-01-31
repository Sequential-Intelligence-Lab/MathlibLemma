import Mathlib

theorem hasFDerivAtFilter_iff_isLittleO_norm_sq
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {f : E → F} {x : E} {f' : E →L[𝕜] F} {L : Filter E} :
    HasFDerivAtFilter f f' x L ↔
      (fun y => f y - f x - f' (y - x)) =o[L] fun y => (‖y - x‖ : ℝ) := by
  sorry