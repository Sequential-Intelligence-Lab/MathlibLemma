import Mathlib

theorem HilbertBasis.repr_single_coord
    {ι 𝕜 : Type*} [DecidableEq ι] [RCLike 𝕜]
    (E : Type*) [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    (b : HilbertBasis ι 𝕜 E) (i j : ι) :
    b.repr (b j) i = (if i = j then 1 else 0) := by
  sorry
