import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem DifferentiableAt.comp_continuousLinearMap_left
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {L : F →L[𝕜] F} {f : E → F} {x : E}
    (hf : DifferentiableAt 𝕜 f x) :
    DifferentiableAt 𝕜 (fun y => L (f y)) x := by
  have hL : DifferentiableAt 𝕜 L (f x) := by
    -- Use the fact that L is a continuous linear map, hence differentiable everywhere.
    apply ContinuousLinearMap.differentiableAt
    <;>
    try norm_num
    <;>
    try infer_instance
  
  have h_main : DifferentiableAt 𝕜 (fun y => L (f y)) x := by
    -- Use the chain rule to compose the differentiability of L at f x with the differentiability of f at x.
    have h1 : DifferentiableAt 𝕜 (fun y => L (f y)) x := DifferentiableAt.comp x hL hf
    exact h1
  
  exact h_main