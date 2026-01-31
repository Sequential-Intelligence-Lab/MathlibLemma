import Mathlib


/-
Invariant and forward invariant sets
-/
lemma IsInvariant.preimage_flow_map {τ α β}
    [TopologicalSpace τ] [AddMonoid τ] [ContinuousAdd τ]
    [TopologicalSpace α] [TopologicalSpace β]
    (ϕ : Flow τ α) (ψ : Flow τ β)
    (π : α → β) (hπ : Flow.IsSemiconjugacy π ϕ ψ)
    (s : Set β) (hs : IsInvariant ψ s) :
    IsInvariant ϕ (π ⁻¹' s) := by
  sorry
