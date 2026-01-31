import Mathlib

open scoped BigOperators

lemma OrthonormalBasis.repr_symm_inj
    {ι 𝕜 E : Type*}
    [RCLike 𝕜]
    [NormedAddCommGroup E]
    [InnerProductSpace 𝕜 E]
    [Fintype ι]
    (b : OrthonormalBasis ι 𝕜 E) :
    Function.Injective b.repr.symm := by
  sorry