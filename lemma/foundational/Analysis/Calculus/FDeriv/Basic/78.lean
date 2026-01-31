import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem HasFDerivWithinAt.comp_continuousLinearMap_right'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {E F G : Type*}
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [NormedAddCommGroup G] [NormedSpace 𝕜 G]
    {L : E →L[𝕜] F} {f : F → G} {f' : F →L[𝕜] G}
    {s : Set E} {x : E}
    (hf : HasFDerivWithinAt f f' (L '' s) (L x)) :
    HasFDerivWithinAt (fun y => f (L y)) (f'.comp L) s x := by
  have hL : HasFDerivAt (L : E → F) (L : E →L[𝕜] F) x := by
    apply ContinuousLinearMap.hasFDerivAt
    <;>
    (try norm_num) <;>
    (try simp_all) <;>
    (try aesop)
  
  have hL_within : HasFDerivWithinAt (L : E → F) (L : E →L[𝕜] F) s x := by
    have h₁ : HasFDerivWithinAt (L : E → F) (L : E →L[𝕜] F) s x :=
      hL.hasFDerivWithinAt
    exact h₁
  
  have h_maps_to : Set.MapsTo (L : E → F) s (L '' s) := by
    intro y hy
    exact ⟨y, hy, rfl⟩
  
  have h_main : HasFDerivWithinAt (fun y => f (L y)) (f'.comp L) s x := by
    have h₂ : HasFDerivWithinAt (fun y : E => f (L y)) (f'.comp L) s x :=
      HasFDerivWithinAt.comp x hf hL_within h_maps_to
    exact h₂
  
  exact h_main