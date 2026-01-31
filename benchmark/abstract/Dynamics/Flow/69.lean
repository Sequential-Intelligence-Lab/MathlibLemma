import Mathlib


/-
Invariant and forward invariant sets
-/
lemma Flow.IsSemiconjugacy.surjective_forwardOrbit_map
    {τ α β} [TopologicalSpace τ] [AddMonoid τ] [ContinuousAdd τ]
    [TopologicalSpace α] [TopologicalSpace β]
    [Preorder τ] [AddLeftMono τ]
    (ϕ : Flow τ α) (ψ : Flow τ β)
    {π : α → β} (hπ : Flow.IsSemiconjugacy π ϕ ψ) (x : α) :
    Set.SurjOn π (Flow.forwardOrbit ϕ x) (Flow.forwardOrbit ψ (π x)) := by
  sorry

/-
Group actions and time reversal for flows on groups
-/
