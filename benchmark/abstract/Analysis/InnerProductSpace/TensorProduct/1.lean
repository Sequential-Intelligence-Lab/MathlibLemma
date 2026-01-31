import Mathlib

lemma TensorProduct.inner_tmul_right
    {𝕜 E F : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
    (x : E) (y y' : F) :
    inner 𝕜 (x ⊗ₜ[𝕜] y) (x ⊗ₜ[𝕜] y') = ‖x‖^2 * inner 𝕜 y y' := by
  sorry
