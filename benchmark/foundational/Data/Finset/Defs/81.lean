import Mathlib

lemma Finset.not_subset_iff_exists {α} {s t : Finset α} :
    ¬ s ⊆ t ↔ ∃ a, a ∈ s ∧ a ∉ t := by
  sorry
