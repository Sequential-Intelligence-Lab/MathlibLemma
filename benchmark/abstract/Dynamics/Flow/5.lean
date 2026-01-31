import Mathlib


/-
Invariant and forward invariant sets
-/
lemma IsInvariant.iUnion {τ α ι} (ϕ : τ → α → α) (s : ι → Set α)
    (hs : ∀ i, IsInvariant ϕ (s i)) :
    IsInvariant ϕ (⋃ i, s i) := by
  sorry
