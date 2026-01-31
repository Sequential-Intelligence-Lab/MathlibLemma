import Mathlib


/-
Invariant and forward invariant sets
-/
lemma Flow.isSemiconjugacy_forwardInvariant_image
    {τ α β} [TopologicalSpace τ] [AddMonoid τ] [ContinuousAdd τ]
    [TopologicalSpace α] [TopologicalSpace β]
    [Preorder τ] [Zero τ]
    (ϕ : Flow τ α) (ψ : Flow τ β)
    (π : α → β) (hπ : Flow.IsSemiconjugacy π ϕ ψ)
    (s : Set α) (hs : IsForwardInvariant ϕ s) :
    IsForwardInvariant ψ (π '' s) := by
  sorry
