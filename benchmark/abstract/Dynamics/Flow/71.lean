import Mathlib


/-
Invariant and forward invariant sets
-/
lemma Flow.reverse_isInvariant
    {τ α} [AddCommGroup τ] [TopologicalSpace τ] [IsTopologicalAddGroup τ]
    [TopologicalSpace α]
    (ϕ : Flow τ α) (s : Set α) :
    IsInvariant ϕ.reverse s ↔ IsInvariant ϕ s := by
  sorry
