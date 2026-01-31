import Mathlib

variable {ι 𝕜 E : Type _}
variable [Fintype ι] [RCLike 𝕜] [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]

lemma OrthonormalBasis.repr_isometry (b : OrthonormalBasis ι 𝕜 E) :
    Isometry b.repr := by
  sorry