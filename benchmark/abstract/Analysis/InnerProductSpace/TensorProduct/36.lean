import Mathlib

open scoped TensorProduct

lemma TensorProduct.mapIsometry_id_right
    {𝕜 E F G : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
    [NormedAddCommGroup G] [InnerProductSpace 𝕜 G]
    (f : E →ₗᵢ[𝕜] G) :
    TensorProduct.mapIsometry f (LinearIsometry.id) =
      (f.rTensor F) := by
  sorry