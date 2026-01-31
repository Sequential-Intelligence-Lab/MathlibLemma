import Mathlib

theorem HilbertBasis.repr_eq_iff
    {ι 𝕜 : Type*} [RCLike 𝕜]
    {E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [CompleteSpace E]
    (b : HilbertBasis ι 𝕜 E) (x y : E) :
    b.repr x = b.repr y ↔ x = y := by
  sorry
