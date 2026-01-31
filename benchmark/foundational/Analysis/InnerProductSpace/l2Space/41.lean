import Mathlib

theorem HilbertBasis.repr_smul
    {ι 𝕜 : Type*} [RCLike 𝕜]
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    (b : HilbertBasis ι 𝕜 E) (c : 𝕜) (x : E) :
    b.repr (c • x) = c • b.repr x := by
  sorry
