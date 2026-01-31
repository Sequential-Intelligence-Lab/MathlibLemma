import Mathlib

lemma TensorProduct.adjoint_map_comp
    {E F G H K L : Type*} 
    [NormedAddCommGroup E] [InnerProductSpace ℂ E] [FiniteDimensional ℂ E]
    [NormedAddCommGroup F] [InnerProductSpace ℂ F] [FiniteDimensional ℂ F]
    [NormedAddCommGroup G] [InnerProductSpace ℂ G] [FiniteDimensional ℂ G]
    [NormedAddCommGroup H] [InnerProductSpace ℂ H] [FiniteDimensional ℂ H]
    [NormedAddCommGroup K] [InnerProductSpace ℂ K] [FiniteDimensional ℂ K]
    [NormedAddCommGroup L] [InnerProductSpace ℂ L] [FiniteDimensional ℂ L]
    (f₁ : E →ₗ[ℂ] F) (f₂ : F →ₗ[ℂ] G)
    (g₁ : H →ₗ[ℂ] K) (g₂ : K →ₗ[ℂ] L) :
    LinearMap.adjoint
      (TensorProduct.map (f₂.comp f₁) (g₂.comp g₁)) =
      TensorProduct.map (LinearMap.adjoint f₁ ∘ₗ LinearMap.adjoint f₂)
        (LinearMap.adjoint g₁ ∘ₗ LinearMap.adjoint g₂) := by
  sorry