import Mathlib

lemma TensorProduct.inner_map_right_tmul
    {𝕜 E F H : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
    [NormedAddCommGroup H] [InnerProductSpace 𝕜 H]
    (g : F →ₗᵢ[𝕜] H) (x x' : E) (y y' : F) :
    inner 𝕜 (TensorProduct.map LinearMap.id g.toLinearMap (x ⊗ₜ y))
      (TensorProduct.map LinearMap.id g.toLinearMap (x' ⊗ₜ y')) =
      inner 𝕜 x x' * inner 𝕜 y y' := by
  -- Rewrite the maps on pure tensors and use the standard inner-product
  -- formula on tensor products plus the fact that `g` preserves inner products.
  simpa [TensorProduct.map_tmul, g.inner_map_map]