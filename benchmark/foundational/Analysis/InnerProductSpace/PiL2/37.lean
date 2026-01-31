import Mathlib

variable {ι 𝕜 E : Type _}
variable [Fintype ι]
variable [RCLike 𝕜]
variable [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]

open scoped BigOperators

lemma OrthonormalBasis.mem_span_iff_repr_support
    (b : OrthonormalBasis ι 𝕜 E) (s : Set ι) (x : E) :
    x ∈ Submodule.span 𝕜 (b '' s) ↔
      ∀ i, b.repr x i ≠ 0 → i ∈ s := by
  sorry