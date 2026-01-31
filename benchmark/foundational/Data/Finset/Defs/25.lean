import Mathlib

lemma Finset.ssubset_iff_exists_subset {α} {s t : Finset α} :
    s ⊂ t ↔ s ⊆ t ∧ ∃ u, s ⊆ u ∧ u ⊆ t ∧ s ≠ u := by
  sorry
