import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem hasFDerivWithinAt_iff_tangentConeAt
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {s : Set E} {f : E → F} {x : E} {f' : E →L[𝕜] F} :
    HasFDerivWithinAt f f' s x ↔
    HasFDerivAtFilter f f' x (𝓝[ s ] x) := by
  have h_main : HasFDerivWithinAt f f' s x ↔ HasFDerivAtFilter f f' x (𝓝[ s ] x) := by
    simp [HasFDerivWithinAt, HasFDerivAtFilter, nhdsWithin]
    <;>
    aesop
  exact h_main