import Mathlib

theorem HilbertBasis.repr_symm_norm_eq_l2_norm
    {ι 𝕜 : Type*} [RCLike 𝕜]
    (E : Type*) [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    (b : HilbertBasis ι 𝕜 E) (f : ℓ²(ι, 𝕜)) :
    ‖b.repr.symm f‖ = ‖f‖ := by
  simpa using (b.repr.symm.norm_map f)