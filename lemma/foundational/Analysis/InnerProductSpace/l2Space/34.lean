import Mathlib

theorem HilbertBasis.repr_surjective
    {ι 𝕜 : Type*} [RCLike 𝕜]
    (E : Type*) [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
    (b : HilbertBasis ι 𝕜 E) :
    Function.Surjective b.repr := by
  intro y
  refine ⟨b.repr.symm y, ?_⟩
  simpa using b.repr.apply_symm_apply y