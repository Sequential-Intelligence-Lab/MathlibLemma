import Mathlib

open scoped BigOperators

variable {ι 𝕜 : Type*} [RCLike 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [CompleteSpace E]
variable {G : ι → Type*}
variable [∀ i, NormedAddCommGroup (G i)] [∀ i, InnerProductSpace 𝕜 (G i)]

theorem IsHilbertSum.linearIsometryEquiv_inner
    (V : ∀ i, G i →ₗᵢ[𝕜] E)
    (hV : IsHilbertSum 𝕜 G V) (x y : E) :
    inner (𝕜 := 𝕜) (hV.linearIsometryEquiv x) (hV.linearIsometryEquiv y)
      = inner (𝕜 := 𝕜) x y := by
  -- `linearIsometryEquiv` is a linear isometry equivalence, so it preserves the inner product.
  simpa using hV.linearIsometryEquiv.map_inner x y