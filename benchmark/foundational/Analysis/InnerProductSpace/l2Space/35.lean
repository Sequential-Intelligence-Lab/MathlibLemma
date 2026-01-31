import Mathlib

theorem HilbertBasis.repr_injective
    {ι 𝕜 : Type*} [RCLike 𝕜]
    (E : Type*) [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    (b : HilbertBasis ι 𝕜 E) :
    Function.Injective b.repr := by
  sorry
