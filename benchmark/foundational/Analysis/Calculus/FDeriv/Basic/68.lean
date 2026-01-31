import Mathlib

open Topology

theorem hasFDerivAt_iff_isLittleO_nhds_zero_norm
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {f : E → F} {x : E} {f' : E →L[𝕜] F} :
    HasFDerivAt f f' x ↔
      (fun h : E => ‖f (x + h) - f x - f' h‖) =o[𝓝 (0 : E)] fun h => ‖h‖ := by
  sorry