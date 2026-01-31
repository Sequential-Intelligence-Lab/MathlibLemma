import Mathlib

open scoped BigOperators

theorem HilbertBasis.repr_orthogonalProjection
    {ι 𝕜 : Type*} [RCLike 𝕜]
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [CompleteSpace E]
    {U : Submodule 𝕜 E} [CompleteSpace U]
    (b : HilbertBasis ι 𝕜 U) (x : E) (i : ι) :
    b.repr (U.orthogonalProjection x) i = b.repr (U.orthogonalProjection x) i := by
  sorry