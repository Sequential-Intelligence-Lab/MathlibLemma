import Mathlib

theorem HilbertBasis.repr_symm_eq_iff
    {ι 𝕜 : Type*} [RCLike 𝕜]
    (E : Type*) [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [CompleteSpace E]
    (b : HilbertBasis ι 𝕜 E) (f g : ℓ²(ι, 𝕜)) :
    b.repr.symm f = b.repr.symm g ↔ f = g := by
  sorry
