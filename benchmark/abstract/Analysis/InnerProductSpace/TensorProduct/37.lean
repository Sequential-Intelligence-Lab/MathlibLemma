import Mathlib

lemma TensorProduct.mapIsometry_congrIsometry_toLinearIsometry
    {𝕜 E F G H : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
    [NormedAddCommGroup G] [InnerProductSpace 𝕜 G]
    [NormedAddCommGroup H] [InnerProductSpace 𝕜 H]
    (f : E ≃ₗᵢ[𝕜] G) (g : F ≃ₗᵢ[𝕜] H) :
    (TensorProduct.congrIsometry f g).toLinearIsometry =
      TensorProduct.mapIsometry f.toLinearIsometry g.toLinearIsometry := by
  sorry
