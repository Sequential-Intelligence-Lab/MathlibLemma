import Mathlib

theorem HilbertBasis.repr_add
    {ι 𝕜 : Type*} [RCLike 𝕜]
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    (b : HilbertBasis ι 𝕜 E) (x y : E) :
    b.repr (x + y) = b.repr x + b.repr y := by
  sorry
