import Mathlib

open scoped ComplexConjugate

variable {ι 𝕜 : Type*} [RCLike 𝕜]
variable {E F : Type*} [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
  [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]

/-- Stub definition: mapping a Hilbert basis along a linear isometry equivalence. -/
noncomputable def HilbertBasis.mapLinearIsometryEquiv
    (b : HilbertBasis ι 𝕜 E) (e : E ≃ₗᵢ[𝕜] F) : HilbertBasis ι 𝕜 F :=
  sorry

theorem HilbertBasis.mapLinearIsometryEquiv_apply
    (b : HilbertBasis ι 𝕜 E) (e : E ≃ₗᵢ[𝕜] F) (i : ι) :
    (HilbertBasis.mapLinearIsometryEquiv b e : HilbertBasis ι 𝕜 F) i = e (b i) := by
  sorry