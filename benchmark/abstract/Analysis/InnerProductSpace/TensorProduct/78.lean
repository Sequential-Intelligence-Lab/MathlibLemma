import Mathlib

lemma TensorProduct.commIsometry_tmul
    {𝕜 E F : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
    (x : E) (y : F) :
    TensorProduct.commIsometry 𝕜 E F (x ⊗ₜ[𝕜] y) =
      y ⊗ₜ[𝕜] x := by
  sorry
