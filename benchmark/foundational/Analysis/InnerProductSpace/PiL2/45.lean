import Mathlib

variable {ι 𝕜 E : Type*}
variable [Fintype ι]
variable [RCLike 𝕜]
variable [NormedAddCommGroup E]
variable [InnerProductSpace 𝕜 E]

open scoped BigOperators

lemma OrthonormalBasis.comp_equiv (b : OrthonormalBasis ι 𝕜 E)
    (L : E ≃ₗᵢ[𝕜] E) :
    OrthonormalBasis.equiv b (b.map L) (Equiv.refl ι) = L := by
  sorry