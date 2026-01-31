import Mathlib

lemma TensorProduct.inner_map_left_tmul
    {𝕜 E F G : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
    [NormedAddCommGroup G] [InnerProductSpace 𝕜 G]
    (f : E →ₗᵢ[𝕜] G) (x x' : E) (y y' : F) :
    inner 𝕜 (TensorProduct.map f.toLinearMap LinearMap.id (x ⊗ₜ y))
      (TensorProduct.map f.toLinearMap LinearMap.id (x' ⊗ₜ y')) =
      inner 𝕜 x x' * inner 𝕜 y y' := by
  sorry
