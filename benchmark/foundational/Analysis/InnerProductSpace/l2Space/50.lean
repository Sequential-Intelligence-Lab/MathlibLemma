import Mathlib

theorem HilbertBasis.tsum_norm_sq_eq_norm_sq
    {ι 𝕜 : Type*} [RCLike 𝕜]
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [CompleteSpace E]
    (b : HilbertBasis ι 𝕜 E) (x : E) :
    ∑' i, ‖b.repr x i‖ ^ 2 = ‖x‖ ^ 2 := by
  sorry
