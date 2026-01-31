import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma TensorProduct.commIsometry_tmul
    {𝕜 E F : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
    (x : E) (y : F) :
    TensorProduct.commIsometry 𝕜 E F (x ⊗ₜ[𝕜] y) =
      y ⊗ₜ[𝕜] x := by
  -- Use the `simp` tactic to simplify the expression.
  -- The `simp` tactic will apply known lemmas and definitions to confirm the desired equality.
  simp [TensorProduct.commIsometry, TensorProduct.tmul, TensorProduct.smul_tmul]
  -- The `simp` tactic should automatically confirm that the left-hand side equals the right-hand side.
  <;> rfl