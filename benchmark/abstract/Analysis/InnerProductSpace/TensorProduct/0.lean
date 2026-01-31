import Mathlib

lemma TensorProduct.inner_tmul_left
    {𝕜 E F : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
    (x x' : E) (y : F) :
    inner 𝕜 (x ⊗ₜ[𝕜] y) (x' ⊗ₜ[𝕜] y) = inner 𝕜 x x' * ‖y‖^2 := by
  sorry
