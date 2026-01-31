import Mathlib

lemma Finset.ssubset_iff_subset_and_ne {α} {s t : Finset α} :
    s ⊂ t ↔ s ⊆ t ∧ t ≠ s := by
  simpa [Finset.ssubset_iff_subset_ne, ne_comm]