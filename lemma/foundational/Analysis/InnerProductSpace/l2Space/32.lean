import Mathlib

theorem HilbertBasis.repr_norm_eq_l2_norm
    {ι 𝕜 : Type*} [RCLike 𝕜]
    (E : Type*) [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    (b : HilbertBasis ι 𝕜 E) (x : E) :
    ‖b.repr x‖ = ‖x‖ := by
  -- `b.repr` is a linear isometry, so it preserves norms.
  simpa using b.repr.norm_map x