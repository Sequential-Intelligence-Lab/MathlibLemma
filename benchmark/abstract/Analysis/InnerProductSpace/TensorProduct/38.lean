import Mathlib

lemma TensorProduct.congrIsometry_trans
    {𝕜 E F G H K L : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
    [NormedAddCommGroup G] [InnerProductSpace 𝕜 G]
    [NormedAddCommGroup H] [InnerProductSpace 𝕜 H]
    [NormedAddCommGroup K] [InnerProductSpace 𝕜 K]
    [NormedAddCommGroup L] [InnerProductSpace 𝕜 L]
    (f₁ : E ≃ₗᵢ[𝕜] G) (f₂ : G ≃ₗᵢ[𝕜] K)
    (g₁ : F ≃ₗᵢ[𝕜] H) (g₂ : H ≃ₗᵢ[𝕜] L) :
    TensorProduct.congrIsometry (f₁.trans f₂) (g₁.trans g₂) =
      (TensorProduct.congrIsometry f₁ g₁).trans
        (TensorProduct.congrIsometry f₂ g₂) := by
  sorry