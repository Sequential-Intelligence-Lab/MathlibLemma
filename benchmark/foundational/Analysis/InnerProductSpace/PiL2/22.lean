import Mathlib

variable {ι 𝕜 E : Type _}
  [RCLike 𝕜]
  [Fintype ι]
  [NormedAddCommGroup E]
  [InnerProductSpace 𝕜 E]

lemma OrthonormalBasis.repr_symm_isometry (b : OrthonormalBasis ι 𝕜 E) :
    Isometry b.repr.symm := by
  sorry