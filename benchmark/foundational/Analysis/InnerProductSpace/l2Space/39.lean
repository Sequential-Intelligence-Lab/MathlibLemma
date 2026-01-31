import Mathlib

theorem HilbertBasis.ext_fun
    {ι 𝕜 : Type*} [RCLike 𝕜]
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    (b₁ b₂ : HilbertBasis ι 𝕜 E)
    (h : (b₁ : ι → E) = b₂) :
    b₁ = b₂ := by
  sorry
