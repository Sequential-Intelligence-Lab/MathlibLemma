import Mathlib

theorem HilbertBasis.repr_symm_coord
    {ι 𝕜 : Type*} [DecidableEq ι] [RCLike 𝕜]
    (E : Type*) [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    (b : HilbertBasis ι 𝕜 E) (f : ℓ²(ι, 𝕜)) :
    b.repr (b.repr.symm f) = f := by
  sorry
