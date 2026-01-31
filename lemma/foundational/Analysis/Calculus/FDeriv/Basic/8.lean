import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem HasFDerivAt.comp_right_nhds
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E E' F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup E'] [NormedSpace 𝕜 E']
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {L : E →L[𝕜] E'} {f : E' → F} {f' : E' →L[𝕜] F}
    {x : E}
    (hf : HasFDerivAt f f' (L x)) :
    HasFDerivAt (fun y => f (L y)) (f'.comp L) x := by
  have hL : HasFDerivAt L L x := by
    apply ContinuousLinearMap.hasFDerivAt
    <;>
    simp_all
  
  have hcomp : HasFDerivAt (fun y => f (L y)) (f'.comp L) x := by
    have h1 : HasFDerivAt (fun y : E => f (L y)) (f'.comp L) x := by
      -- Use the chain rule to compose the derivatives
      have h2 : HasFDerivAt L (L : E →L[𝕜] E') x := hL
      have h3 : HasFDerivAt f f' (L x) := hf
      -- Apply the chain rule
      have h4 : HasFDerivAt (fun y : E => f (L y)) (f'.comp (L : E →L[𝕜] E')) x := HasFDerivAt.comp x h3 h2
      -- Simplify the composition
      simpa [LinearMap.comp_apply] using h4
    exact h1
  
  exact hcomp