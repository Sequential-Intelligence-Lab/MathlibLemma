import Mathlib

lemma TensorProduct.mapIsometry_comp_commIsometry
    {𝕜 E F G H : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
    [NormedAddCommGroup G] [InnerProductSpace 𝕜 G]
    [NormedAddCommGroup H] [InnerProductSpace 𝕜 H]
    (f : E →ₗᵢ[𝕜] G) (g : F →ₗᵢ[𝕜] H) :
    (TensorProduct.commIsometry 𝕜 G H).toLinearIsometry.comp
      (TensorProduct.mapIsometry f g) =
    (TensorProduct.mapIsometry g f).comp
      (TensorProduct.commIsometry 𝕜 E F).toLinearIsometry := by
  sorry
