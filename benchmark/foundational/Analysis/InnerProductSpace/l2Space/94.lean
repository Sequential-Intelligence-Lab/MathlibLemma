import Mathlib

theorem IsHilbertSum_iff_orthogonalFamily_and_dense
    {ι 𝕜 : Type*} [RCLike 𝕜]
    {E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [CompleteSpace E]
    {G : ι → Type*}
    [∀ i, NormedAddCommGroup (G i)] [∀ i, InnerProductSpace 𝕜 (G i)]
    (V : ∀ i, G i →ₗᵢ[𝕜] E) :
    IsHilbertSum 𝕜 G V ↔
      OrthogonalFamily 𝕜 G V ∧
        ⊤ ≤ (⨆ i, LinearMap.range (V i).toLinearMap).topologicalClosure := by
  sorry
