import Mathlib

noncomputable def HilbertBasis.map_linearIsometryEquiv
    {ι 𝕜 : Type*} [RCLike 𝕜]
    {E F : Type*} [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
    (b : HilbertBasis ι 𝕜 E) (e : E ≃ₗᵢ[𝕜] F) :
    HilbertBasis ι 𝕜 F := by
  sorry