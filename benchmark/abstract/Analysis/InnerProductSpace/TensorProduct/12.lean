import Mathlib

lemma TensorProduct.isometry_map_isometry_iff
    {𝕜 E F G H : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
    [NormedAddCommGroup G] [InnerProductSpace 𝕜 G]
    [NormedAddCommGroup H] [InnerProductSpace 𝕜 H]
    (f : E →ₗᵢ[𝕜] G) (g : F →ₗᵢ[𝕜] H) :
    Isometry (TensorProduct.mapIsometry f g) := by
  sorry
