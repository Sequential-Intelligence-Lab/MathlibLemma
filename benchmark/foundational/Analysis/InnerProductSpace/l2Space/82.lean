import Mathlib

theorem IsHilbertSum.linearIsometryEquiv_symm_isometry
    {ι 𝕜 : Type*} [RCLike 𝕜]
    {E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [CompleteSpace E]
    {G : ι → Type*}
    [∀ i, NormedAddCommGroup (G i)] [∀ i, InnerProductSpace 𝕜 (G i)]
    (V : ∀ i, G i →ₗᵢ[𝕜] E)
    (hV : IsHilbertSum 𝕜 G V) :
    Isometry hV.linearIsometryEquiv.symm := by
  sorry
