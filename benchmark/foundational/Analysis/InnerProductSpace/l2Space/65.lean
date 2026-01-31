import Mathlib

theorem HilbertBasis.repr_single
    {ι 𝕜 : Type*} [DecidableEq ι] [RCLike 𝕜]
    (E : Type*) [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    (b : HilbertBasis ι 𝕜 E) (i : ι) (c : 𝕜) :
    b.repr (c • b i) = lp.single 2 i c := by
  sorry
