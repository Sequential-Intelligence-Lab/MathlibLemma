import Mathlib


/-
Invariant and forward invariant sets
-/
lemma Flow.image_orbit
    {τ α β} [TopologicalSpace τ] [AddMonoid τ] [ContinuousAdd τ]
    [TopologicalSpace α] [TopologicalSpace β]
    (ϕ : Flow τ α) (ψ : Flow τ β)
    (π : α → β) (hπ : Flow.IsSemiconjugacy π ϕ ψ) (x : α) :
    π '' Flow.orbit ϕ x ⊆ Flow.orbit ψ (π x) := by
  sorry
