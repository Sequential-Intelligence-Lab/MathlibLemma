import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma TensorProduct.lidIsometry_tmul_one
    {𝕜 E : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    (x : E) :
    TensorProduct.lidIsometry 𝕜 E (1 ⊗ₜ[𝕜] x) = x := by
  -- Apply the definition of the lid isometry, which maps 1 ⊗ₜ[𝕜] x to 1 • x
  simp [TensorProduct.lidIsometry]
  -- Simplify the expression using the property of scalar multiplication by 1
  <;> simp [one_smul]
  -- Confirm the result by reflexivity
  <;> rfl