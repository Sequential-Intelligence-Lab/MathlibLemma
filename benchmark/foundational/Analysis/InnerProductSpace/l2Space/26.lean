import Mathlib

theorem IsHilbertSum.span_range_eq_top
    {ι 𝕜 : Type*} [RCLike 𝕜]
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [CompleteSpace E]
    {G : ι → Type*}
    [∀ i, NormedAddCommGroup (G i)] [∀ i, InnerProductSpace 𝕜 (G i)]
    (V : ∀ i, G i →ₗᵢ[𝕜] E)
    (hV : IsHilbertSum 𝕜 G V) :
    (Submodule.span 𝕜 (⋃ i, Set.range (V i))).topologicalClosure = ⊤ := by
  sorry