import Mathlib


/-
Invariant and forward invariant sets
-/
lemma IsInvariant_iff_subset_preimage {τ α} (ϕ : τ → α → α) (s : Set α) :
    IsInvariant ϕ s ↔ ∀ t, s ⊆ (ϕ t) ⁻¹' s := by
  sorry
