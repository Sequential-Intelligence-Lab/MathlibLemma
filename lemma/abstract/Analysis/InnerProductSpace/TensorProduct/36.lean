import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma TensorProduct.mapIsometry_id_right
    {𝕜 E F G : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
    [NormedAddCommGroup G] [InnerProductSpace 𝕜 G]
    (f : E →ₗᵢ[𝕜] G) :
    TensorProduct.mapIsometry f (LinearIsometry.id) =
      (f.rTensor F) := by
  have h_main : (TensorProduct.mapIsometry f (LinearIsometry.id)).toLinearMap = (f.rTensor F).toLinearMap := by
    simp [LinearIsometry.toLinearMap]
    <;>
    simp_all [LinearMap.rTensor, LinearIsometry.toLinearMap]
    <;>
    congr 1 <;> ext <;> simp_all [LinearMap.rTensor_apply, LinearIsometry.toLinearMap]
    <;>
    aesop
  
  have h_final : TensorProduct.mapIsometry f (LinearIsometry.id) = (f.rTensor F) := by
    apply LinearIsometry.ext
    <;>
    simp_all [LinearIsometry.toLinearMap]
    <;>
    try aesop
  
  apply h_final