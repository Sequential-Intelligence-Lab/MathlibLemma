import Mathlib

variable {ι 𝕜 E : Type*}
variable [Fintype ι]
variable [RCLike 𝕜]
variable [NormedAddCommGroup E]
variable [InnerProductSpace 𝕜 E]

lemma OrthonormalBasis.repr_sub (b : OrthonormalBasis ι 𝕜 E) (x y : E) :
    b.repr (x - y) = b.repr x - b.repr y := by
  simpa using b.repr.map_sub x y