import Mathlib

theorem HilbertBasis.repr_orthonormal
    {ι 𝕜 : Type*} [RCLike 𝕜]
    (E : Type*) [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    (b : HilbertBasis ι 𝕜 E) :
    Orthonormal 𝕜 fun i => b i := by
  simpa using b.orthonormal