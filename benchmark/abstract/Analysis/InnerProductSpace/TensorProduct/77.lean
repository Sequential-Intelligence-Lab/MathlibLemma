import Mathlib

lemma TensorProduct.assocIsometry_tmul_tmul_tmul
    {𝕜 E F G : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
    [NormedAddCommGroup G] [InnerProductSpace 𝕜 G]
    (x : E) (y : F) (z : G) :
    TensorProduct.assocIsometry 𝕜 E F G (x ⊗ₜ[𝕜] y ⊗ₜ[𝕜] z) =
      x ⊗ₜ[𝕜] (y ⊗ₜ[𝕜] z) := by
  sorry
