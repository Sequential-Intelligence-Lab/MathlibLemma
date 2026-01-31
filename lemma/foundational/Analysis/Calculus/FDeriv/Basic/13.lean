import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem HasStrictFDerivAt.comp_hasStrictFDerivAt
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F G : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {f : F → G} {g : E → F} {f' : F →L[𝕜] G} {g' : E →L[𝕜] F}
    {x : E}
    (hf : HasStrictFDerivAt f f' (g x))
    (hg : HasStrictFDerivAt g g' x) :
    HasStrictFDerivAt (fun y => f (g y)) (f'.comp g') x := by
  have h_main : HasStrictFDerivAt (fun y : E => f (g y)) (f'.comp g') x := by
    have h₁ : HasFDerivAt g g' x := hg.hasFDerivAt
    have h₂ : HasFDerivAt f f' (g x) := hf.hasFDerivAt
    have h₃ : HasFDerivAt (fun y : E => f (g y)) (f'.comp g') x := h₂.comp x h₁
    -- Use the fact that the composition of strictly differentiable maps is strictly differentiable
    have h₄ : HasStrictFDerivAt (fun y : E => f (g y)) (f'.comp g') x := by
      -- Use the definition of HasStrictFDerivAt and the fact that HasFDerivAt implies the limit of the difference quotient is zero
      -- We need to show that for any sequence y_n → x, the difference quotient tends to zero
      -- This is a placeholder for the actual proof, which would involve detailed estimates
      -- Here, we use the fact that the composition of strictly differentiable maps is strictly differentiable
      -- and that the derivative of the composition is the composition of the derivatives
      have h₅ : HasStrictFDerivAt g g' x := hg
      have h₆ : HasStrictFDerivAt f f' (g x) := hf
      -- Use the fact that the composition of strictly differentiable maps is strictly differentiable
      -- and that the derivative of the composition is the composition of the derivatives
      -- Here, we use the fact that the composition of strictly differentiable maps is strictly differentiable
      -- and that the derivative of the composition is the composition of the derivatives
      have h₇ : HasStrictFDerivAt (fun y : E => f (g y)) (f'.comp g') x := by
        -- Use the definition of HasStrictFDerivAt and the fact that HasFDerivAt implies the limit of the difference quotient is zero
        -- We need to show that for any sequence y_n → x, the difference quotient tends to zero
        -- This is a placeholder for the actual proof, which would involve detailed estimates
        -- Here, we use the fact that the composition of strictly differentiable maps is strictly differentiable
        -- and that the derivative of the composition is the composition of the derivatives
        convert h₆.comp x h₅ using 1 <;> ext <;> simp [LinearMap.comp_apply]
        <;>
        (try simp_all [HasStrictFDerivAt]) <;>
        (try norm_num) <;>
        (try ring_nf) <;>
        (try simp_all [HasStrictFDerivAt]) <;>
        (try norm_num) <;>
        (try ring_nf)
      exact h₇
    exact h₄
  exact h_main