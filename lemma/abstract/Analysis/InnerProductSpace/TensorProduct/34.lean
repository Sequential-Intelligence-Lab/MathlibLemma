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
  -- equality of linear isometries is pointwise equality
  ext z
  -- now work by induction on the tensor product element z
  refine TensorProduct.induction_on z ?hz ?htmul ?hadd
  · -- case z = 0
    simp [TensorProduct.mapIsometry]
  · -- case z = x ⊗ₜ y
    intro x y
    simp [TensorProduct.mapIsometry, TensorProduct.map_tmul,
      LinearIsometry.comp, LinearIsometry.comp_apply, LinearMap.comp_apply]
  · -- additive step
    intro z₁ z₂ hz₁ hz₂
    simpa [map_add, hz₁, hz₂]