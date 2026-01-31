import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem DifferentiableAt.comp_continuousLinearMap_right
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {L : E →L[𝕜] E} {f : E → F} {x : E}
    (hf : DifferentiableAt 𝕜 f (L x)) :
    DifferentiableAt 𝕜 (fun y => f (L y)) x := by
  have hL : DifferentiableAt 𝕜 L x := by
    -- Use the fact that a continuous linear map is differentiable everywhere
    apply ContinuousLinearMap.differentiableAt
  
  have hcomp : DifferentiableAt 𝕜 (fun y => f (L y)) x := by
    -- Apply the chain rule to the composition of f and L
    have h1 : DifferentiableAt 𝕜 (fun y : E => L y) x := hL
    have h2 : DifferentiableAt 𝕜 f (L x) := hf
    -- Use the chain rule to show that the composition is differentiable at x
    have h3 : DifferentiableAt 𝕜 (f ∘ (fun y : E => L y)) x := h2.comp x h1
    -- Simplify the composition to match the desired form
    convert h3 using 1
    <;> ext y
    <;> simp [Function.comp_apply]
  
  exact hcomp