import Mathlib

theorem HilbertBasis.repr_hasSum
    {ι 𝕜 : Type*} [RCLike 𝕜]
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    [CompleteSpace E]
    (b : HilbertBasis ι 𝕜 E) (x : E) :
    HasSum (fun i => b.repr x i • b i) x := by
  sorry
