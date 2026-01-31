import Mathlib

theorem HilbertBasis.repr_zero
    {ι 𝕜 : Type*} [RCLike 𝕜]
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    (b : HilbertBasis ι 𝕜 E) :
    b.repr (0 : E) = 0 := by
  simpa using map_zero b.repr