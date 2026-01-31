import Mathlib

lemma Finset.ssubset_iff_subset_card {α} [DecidableEq α] {s t : Finset α} :
    s ⊂ t ↔ s ⊆ t ∧ s.card < t.card := by
  sorry
