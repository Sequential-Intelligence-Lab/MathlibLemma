import Mathlib

theorem HilbertBasis.summable_repr_norm_sq
    {ι 𝕜 : Type*} [RCLike 𝕜]
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [CompleteSpace E]
    (b : HilbertBasis ι 𝕜 E) (x : E) :
    Summable fun i => ‖b.repr x i‖ ^ 2 := by
  sorry
