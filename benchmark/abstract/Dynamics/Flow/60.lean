import Mathlib


/-
Invariant and forward invariant sets
-/
lemma Flow.image_forwardOrbit
    {τ α β} [TopologicalSpace τ] [AddMonoid τ] [ContinuousAdd τ]
    [TopologicalSpace α] [TopologicalSpace β] [Preorder τ] [AddLeftMono τ]
    (ϕ : Flow τ α) (ψ : Flow τ β)
    (π : α → β) (hπ : Flow.IsSemiconjugacy π ϕ ψ) (x : α) :
    π '' Flow.forwardOrbit ϕ x ⊆ Flow.forwardOrbit ψ (π x) := by
  sorry
