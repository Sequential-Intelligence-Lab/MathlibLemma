import Mathlib

theorem HilbertBasis.exists_orthonormalBasis
    {ι 𝕜 : Type*} [Fintype ι] [RCLike 𝕜]
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [FiniteDimensional 𝕜 E]
    (b : HilbertBasis ι 𝕜 E) :
    ∃ B : OrthonormalBasis ι 𝕜 E, True := by
  sorry
