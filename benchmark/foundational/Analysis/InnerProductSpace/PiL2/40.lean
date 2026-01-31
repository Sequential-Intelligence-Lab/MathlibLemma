import Mathlib

variable {ι 𝕜 E : Type _}
variable [Fintype ι]
variable [RCLike 𝕜]
variable [NormedAddCommGroup E]
variable [InnerProductSpace 𝕜 E]

lemma OrthonormalBasis.sum_repr_norm_sq (b : OrthonormalBasis ι 𝕜 E) (x : E) :
    ∑ i, ‖b.repr x i‖ ^ 2 = ‖x‖ ^ 2 := by
  sorry