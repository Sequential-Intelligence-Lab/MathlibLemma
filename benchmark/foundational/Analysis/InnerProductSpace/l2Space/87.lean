import Mathlib

theorem HilbertBasis.hasSum_repr_normSq
    {ι 𝕜 : Type*} [RCLike 𝕜]
    {E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [CompleteSpace E]
    (b : HilbertBasis ι 𝕜 E) (x : E) :
    HasSum (fun i => (‖b.repr x i‖ : ℝ) ^ (2 : ℝ)) ((‖x‖ : ℝ) ^ (2 : ℝ)) := by
  sorry