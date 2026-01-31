import Mathlib

variable {ι 𝕜 E : Type*}
variable [Fintype ι]
variable [RCLike 𝕜]
variable [NormedAddCommGroup E]
variable [InnerProductSpace 𝕜 E]

open scoped BigOperators

lemma OrthonormalBasis.repr_neg (b : OrthonormalBasis ι 𝕜 E) (x : E) :
    b.repr (-x) = - b.repr x := by
  simpa using b.repr.map_neg x