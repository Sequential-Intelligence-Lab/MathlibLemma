import Mathlib

theorem HasFDerivAt.norm_nonneg_iff_opNorm_nonneg
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {x : E} {f : E → F} {f' : E →L[𝕜] F} :
    HasFDerivAt f f' x →
    0 ≤ ‖f'‖ := by
  intro h
  -- The hypothesis `h` is not needed; the norm is always nonnegative.
  simpa using (norm_nonneg f')