import Mathlib

variable {ι 𝕜 E : Type*}
  [DecidableEq ι]
  [Fintype ι]
  [RCLike 𝕜]
  [NormedAddCommGroup E]
  [InnerProductSpace 𝕜 E]

lemma OrthonormalBasis.repr_inj (b : OrthonormalBasis ι 𝕜 E) :
    Function.Injective b.repr := by
  sorry