import Mathlib

def HilbertBasis.lp_equivLp
    {ι 𝕜 : Type*} [RCLike 𝕜]
    (E : Type*) [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    (b : HilbertBasis ι 𝕜 E) :
    E ≃ₗᵢ[𝕜] ℓ²(ι, 𝕜) := by
  sorry