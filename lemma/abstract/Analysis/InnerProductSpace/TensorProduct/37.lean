import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma TensorProduct.mapIsometry_congrIsometry_toLinearIsometry
    {𝕜 E F G H : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
    [NormedAddCommGroup G] [InnerProductSpace 𝕜 G]
    [NormedAddCommGroup H] [InnerProductSpace 𝕜 H]
    (f : E ≃ₗᵢ[𝕜] G) (g : F ≃ₗᵢ[𝕜] H) :
    (TensorProduct.congrIsometry f g).toLinearIsometry =
      TensorProduct.mapIsometry f.toLinearIsometry g.toLinearIsometry := by
  apply Eq.symm
  rw [TensorProduct.congrIsometry]
  ext
  simp [TensorProduct.mapIsometry_apply]
  -- The proof is complete by showing that both sides agree on all elements of the tensor product space.
  -- Since both maps are isometries and agree on a generating set, they must be equal.
  <;> rfl