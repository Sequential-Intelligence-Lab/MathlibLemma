import Mathlib

theorem HilbertBasis.repr_symm_apply_orthonormal_sum
    {ι 𝕜 : Type*} [DecidableEq ι] [RCLike 𝕜]
    (E : Type*) [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [CompleteSpace E]
    (b : HilbertBasis ι 𝕜 E) (x : E) :
    b.repr.symm (b.repr x) = x := by
  simpa using b.repr.symm_apply_apply x