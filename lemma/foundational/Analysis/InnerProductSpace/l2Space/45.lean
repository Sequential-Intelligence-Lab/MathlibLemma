import Mathlib

theorem HilbertBasis.repr_neg
    {ι 𝕜 : Type*} [RCLike 𝕜]
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    (b : HilbertBasis ι 𝕜 E) (x : E) :
    b.repr (-x) = -b.repr x := by
  simpa using (map_neg (f := b.repr) x)