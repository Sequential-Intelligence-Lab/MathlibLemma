import Mathlib


/-
Invariant and forward invariant sets
-/
lemma IsForwardInvariant.preimage_flow_map {τ α β}
    [TopologicalSpace τ] [AddMonoid τ] [ContinuousAdd τ]
    [TopologicalSpace α] [TopologicalSpace β] [Preorder τ] [Zero τ]
    (ϕ : Flow τ α) (ψ : Flow τ β)
    (π : α → β) (hπ : Flow.IsSemiconjugacy π ϕ ψ)
    (s : Set β) (hs : IsForwardInvariant ψ s) :
    IsForwardInvariant ϕ (π ⁻¹' s) := by
  sorry
