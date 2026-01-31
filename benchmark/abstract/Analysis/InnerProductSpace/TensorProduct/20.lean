import Mathlib

lemma TensorProduct.norm_tmul_le_norm_mul_norm
    {𝕜 E F : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
    (x : E) (y : F) :
    ‖x ⊗ₜ[𝕜] y‖ ≤ ‖x‖ * ‖y‖ := by
  sorry
