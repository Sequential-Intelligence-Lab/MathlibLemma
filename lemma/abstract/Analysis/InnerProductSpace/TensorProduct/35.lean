import Mathlib

lemma TensorProduct.mapIsometry_id_left
    {𝕜 E F G : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
    [NormedAddCommGroup G] [InnerProductSpace 𝕜 G]
    (g : F →ₗᵢ[𝕜] G) :
    TensorProduct.mapIsometry (LinearIsometry.id) g =
      (g.lTensor E) := by
  ext e f
  simp [TensorProduct.mapIsometry, LinearIsometry.lTensor]