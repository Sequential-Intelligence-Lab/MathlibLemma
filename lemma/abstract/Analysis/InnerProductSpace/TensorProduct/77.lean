import Mathlib

lemma TensorProduct.assocIsometry_tmul_tmul_tmul
    {𝕜 E F G : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
    [NormedAddCommGroup G] [InnerProductSpace 𝕜 G]
    (x : E) (y : F) (z : G) :
    TensorProduct.assocIsometry 𝕜 E F G (x ⊗ₜ[𝕜] y ⊗ₜ[𝕜] z) =
      x ⊗ₜ[𝕜] (y ⊗ₜ[𝕜] z) := by
  -- `assocIsometry` is defined so that it sends pure tensors to reassociated tensors.
  -- The following `simp` uses the corresponding lemma for pure tensors.
  simpa using
    TensorProduct.assocIsometry_tmul_tmul_tmul
      (𝕜 := 𝕜) (E := E) (F := F) (G := G) x y z