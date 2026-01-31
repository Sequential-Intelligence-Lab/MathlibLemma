import Mathlib

variable {ι 𝕜 E : Type _}
variable [Fintype ι]
variable [RCLike 𝕜]
variable [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]

lemma OrthonormalBasis.repr_zero (b : OrthonormalBasis ι 𝕜 E) :
    b.repr 0 = 0 := by
  simpa using b.repr.map_zero