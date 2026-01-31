import Mathlib


/-
Invariant and forward invariant sets
-/
lemma IsInvariant.union {τ α} (ϕ : τ → α → α) (s t : Set α)
    (hs : IsInvariant ϕ s) (ht : IsInvariant ϕ t) :
    IsInvariant ϕ (s ∪ t) := by
  sorry
