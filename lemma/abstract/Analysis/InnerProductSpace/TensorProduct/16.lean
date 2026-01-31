import Mathlib

open scoped TensorProduct

lemma TensorProduct.norm_mapIsometry_eq
    {𝕜 E F G H : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
    [NormedAddCommGroup G] [InnerProductSpace 𝕜 G]
    [NormedAddCommGroup H] [InnerProductSpace 𝕜 H]
    (f : E →ₗᵢ[𝕜] G) (g : F →ₗᵢ[𝕜] H) (x : E ⊗[𝕜] F) :
    ‖TensorProduct.map (f.toLinearMap) (g.toLinearMap) x‖ = ‖x‖ := by
  -- Identify the map with the bundled linear isometry on the tensor product
  change ‖(TensorProduct.mapIsometry f g) x‖ = ‖x‖
  -- Use the fact that a linear isometry preserves norms
  simpa using (TensorProduct.mapIsometry f g).norm_map x