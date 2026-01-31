import Mathlib

theorem HilbertBasis.repr_isometry {ι 𝕜 : Type*} [RCLike 𝕜]
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    (b : HilbertBasis ι 𝕜 E) :
    Isometry b.repr := by
  sorry
