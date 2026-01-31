import Mathlib

theorem HilbertBasis.repr_apply_orthogonal_sum
    {ι 𝕜 : Type*} [DecidableEq ι] [RCLike 𝕜]
    (E : Type*) [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [CompleteSpace E]
    (b : HilbertBasis ι 𝕜 E) (x : ℓ²(ι, 𝕜)) :
    b.repr (b.repr.symm x) = x := by
  sorry
