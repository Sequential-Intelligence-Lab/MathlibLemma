import Mathlib

theorem OrthogonalFamily.linearIsometry_surjective_iff
    {ι 𝕜 : Type*} [RCLike 𝕜]
    {E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [CompleteSpace E]
    {G : ι → Type*}
    [∀ i, NormedAddCommGroup (G i)] [∀ i, InnerProductSpace 𝕜 (G i)]
    (V : ∀ i, G i →ₗᵢ[𝕜] E)
    (hV : OrthogonalFamily 𝕜 G V) :
    Function.Surjective hV.linearIsometry ↔
      ⊤ ≤ (⨆ i, LinearMap.range (V i).toLinearMap).topologicalClosure := by
  sorry
