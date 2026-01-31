import Mathlib

lemma TensorProduct.mapIsometry_comp
    {𝕜 E F G H K L : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
    [NormedAddCommGroup G] [InnerProductSpace 𝕜 G]
    [NormedAddCommGroup H] [InnerProductSpace 𝕜 H]
    [NormedAddCommGroup K] [InnerProductSpace 𝕜 K]
    [NormedAddCommGroup L] [InnerProductSpace 𝕜 L]
    (f₁ : E →ₗᵢ[𝕜] G) (f₂ : G →ₗᵢ[𝕜] K)
    (g₁ : F →ₗᵢ[𝕜] H) (g₂ : H →ₗᵢ[𝕜] L) :
    TensorProduct.mapIsometry (f₂.comp f₁) (g₂.comp g₁) =
      (TensorProduct.mapIsometry f₂ g₂).comp (TensorProduct.mapIsometry f₁ g₁) := by
  sorry
