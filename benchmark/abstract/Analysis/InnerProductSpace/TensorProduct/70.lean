import Mathlib

lemma LinearIsometry.rTensor_isometry
    {𝕜 E F G : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
    [NormedAddCommGroup G] [InnerProductSpace 𝕜 G]
    (f : E →ₗᵢ[𝕜] G) :
    Isometry (f.rTensor F) := by
  sorry
