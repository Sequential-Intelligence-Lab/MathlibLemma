import Mathlib

lemma LinearIsometryEquiv.lTensor_isometry_equiv
    {𝕜 E F G : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
    [NormedAddCommGroup G] [InnerProductSpace 𝕜 G]
    (f : F ≃ₗᵢ[𝕜] G) :
    Isometry (f.lTensor E) := by
  sorry
