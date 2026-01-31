import Mathlib

-- Version for `lp G 2`
theorem IsHilbertSum.linearIsometryEquiv_symm_inner_lp
    {ι 𝕜 : Type*} [RCLike 𝕜]
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [CompleteSpace E]
    {G : ι → Type*}
    [∀ i, NormedAddCommGroup (G i)] [∀ i, InnerProductSpace 𝕜 (G i)]
    (V : ∀ i, G i →ₗᵢ[𝕜] E)
    (hV : IsHilbertSum 𝕜 G V) (f g : lp G 2) :
    inner (𝕜 := 𝕜) (hV.linearIsometryEquiv.symm f) (hV.linearIsometryEquiv.symm g)
      = inner (𝕜 := 𝕜) f g := by
  sorry

-- Version for `E`
theorem IsHilbertSum.linearIsometryEquiv_symm_inner
    {ι 𝕜 : Type*} [RCLike 𝕜]
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [CompleteSpace E]
    {G : ι → Type*}
    [∀ i, NormedAddCommGroup (G i)] [∀ i, InnerProductSpace 𝕜 (G i)]
    (V : ∀ i, G i →ₗᵢ[𝕜] E)
    (hV : IsHilbertSum 𝕜 G V) (f g : E) :
    inner (𝕜 := 𝕜) (hV.linearIsometryEquiv f) (hV.linearIsometryEquiv g)
      = inner (𝕜 := 𝕜) f g := by
  sorry