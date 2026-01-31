import Mathlib

theorem HilbertBasis.repr_apply_eq_inner
    {ι 𝕜 : Type*} [RCLike 𝕜]
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    (b : HilbertBasis ι 𝕜 E) (x : E) (i : ι) :
    b.repr x i = inner (𝕜 := 𝕜) (b i) x := by
  sorry