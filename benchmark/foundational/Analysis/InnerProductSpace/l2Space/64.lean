import Mathlib

theorem HilbertBasis.repr_single_one
    {ι 𝕜 : Type*} [DecidableEq ι] [RCLike 𝕜]
    (E : Type*) [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    (b : HilbertBasis ι 𝕜 E) (i : ι) :
    b.repr (b i) = lp.single 2 i (1 : 𝕜) := by
  sorry
