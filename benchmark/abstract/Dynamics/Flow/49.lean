import Mathlib


/-
Invariant and forward invariant sets
-/
lemma Flow.forwardOrbit_subset_invariant
    {τ α} [TopologicalSpace τ] [AddMonoid τ] [ContinuousAdd τ]
    [TopologicalSpace α] [Preorder τ] [AddLeftMono τ]
    (ϕ : Flow τ α) {s : Set α} (hs : IsForwardInvariant ϕ s)
    {x : α} (hx : x ∈ s) :
    Flow.forwardOrbit ϕ x ⊆ s := by
  sorry
