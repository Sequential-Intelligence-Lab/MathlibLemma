import Mathlib


/-
Invariant and forward invariant sets
-/
lemma Flow.orbit_subset_invariant
    {τ α} [TopologicalSpace τ] [AddMonoid τ] [ContinuousAdd τ]
    [TopologicalSpace α]
    (ϕ : Flow τ α) {s : Set α} (hs : IsInvariant ϕ s) {x : α}
    (hx : x ∈ s) :
    Flow.orbit ϕ x ⊆ s := by
  sorry
