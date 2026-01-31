import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem HasStrictFDerivAt.comp_right_isometry
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F G : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {L : E ≃L[𝕜] F} {f : F → G} {f' : F →L[𝕜] G} {x : E}
    (hf : HasStrictFDerivAt f f' (L x)) :
    HasStrictFDerivAt (fun y => f (L y)) (f'.comp (L : E →L[𝕜] F)) x := by
  have hL : HasStrictFDerivAt (fun y : E => (L : E → F) y) (L : E →L[𝕜] F) x := by
    have h : HasStrictFDerivAt (fun y : E => (L.toContinuousLinearMap : E → F) y) (L.toContinuousLinearMap : E →L[𝕜] F) x := by
      apply ContinuousLinearMap.hasStrictFDerivAt
    have h₂ : (fun y : E => (L.toContinuousLinearMap : E → F) y) = (fun y : E => (L : E → F) y) := by
      funext y
      simp [ContinuousLinearMap.coe_mk]
      <;> simp_all [LinearEquiv.coe_mk]
    have h₃ : (L.toContinuousLinearMap : E →L[𝕜] F) = (L : E →L[𝕜] F) := by
      rfl
    convert h using 1 <;> simp_all [h₂, h₃]
    <;>
    (try simp_all [ContinuousLinearMap.coe_mk, LinearEquiv.coe_mk]) <;>
    (try funext x <;> simp [ContinuousLinearMap.coe_mk, LinearEquiv.coe_mk]) <;>
    (try aesop)
  
  have h_main : HasStrictFDerivAt (fun y : E => f (L y)) (f'.comp (L : E →L[𝕜] F)) x := by
    have h₁ : HasStrictFDerivAt (fun y : E => f (L y)) (f'.comp (L : E →L[𝕜] F)) x := by
      -- Use the chain rule for strict Fréchet derivatives
      have h₂ : HasStrictFDerivAt (fun y : E => (L : E → F) y) (L : E →L[𝕜] F) x := hL
      have h₃ : HasStrictFDerivAt f f' (L x) := hf
      -- Apply the chain rule to combine the derivatives of f and L
      have h₄ : HasStrictFDerivAt (fun y : E => f (L y)) (f'.comp (L : E →L[𝕜] F)) x := by
        -- Use the fact that L is a continuous linear map and apply the chain rule
        apply HasStrictFDerivAt.comp x h₃ h₂
      exact h₄
    exact h₁
  
  exact h_main