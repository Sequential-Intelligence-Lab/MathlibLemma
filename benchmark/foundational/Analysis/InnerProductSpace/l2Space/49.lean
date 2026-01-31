import Mathlib

theorem HilbertBasis.hasSum_norm_sq_eq_inner
    {ι 𝕜 : Type*} [RCLike 𝕜]
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [CompleteSpace E]
    (b : HilbertBasis ι 𝕜 E) (x : E) :
    HasSum (fun i => (‖b.repr x i‖ : ℝ) ^ (2 : ℕ)) (‖x‖ ^ (2 : ℕ)) := by
  sorry