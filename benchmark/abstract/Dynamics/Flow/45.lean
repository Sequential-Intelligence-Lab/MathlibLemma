import Mathlib


/-
Invariant and forward invariant sets
-/
lemma Flow.isSemiconjugacy_invariant_image
    {τ α β} [TopologicalSpace τ] [AddMonoid τ] [ContinuousAdd τ]
    [TopologicalSpace α] [TopologicalSpace β]
    (ϕ : Flow τ α) (ψ : Flow τ β)
    (π : α → β) (hπ : Flow.IsSemiconjugacy π ϕ ψ)
    (s : Set α) (hs : IsInvariant ϕ s) :
    IsInvariant ψ (π '' s) := by
  sorry
