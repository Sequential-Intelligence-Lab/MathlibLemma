import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem HasFDerivAt.unique_zero_of_isConst
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {x : E} {c : F} {f' : E →L[𝕜] F}
    (h : HasFDerivAt (fun _ : E => c) f' x) :
    f' = 0 := by
  have h₁ : HasFDerivAt (fun _ : E => c) (0 : E →L[𝕜] F) x := by
    apply hasFDerivAt_const
    <;>
    simp_all
  
  have h₂ : f' = (0 : E →L[𝕜] F) := by
    have h₃ : f' = (0 : E →L[𝕜] F) := by
      -- Use the uniqueness of the Fréchet derivative to show that f' must be zero.
      have h₄ : f' = (0 : E →L[𝕜] F) := by
        apply HasFDerivAt.unique h h₁
      exact h₄
    exact h₃
  
  exact h₂