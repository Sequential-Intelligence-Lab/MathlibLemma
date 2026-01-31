import Mathlib

lemma Finset.ssubset_iff_subset_ne' {α} {s t : Finset α} :
    s ⊂ t ↔ s ⊆ t ∧ s ≠ t := by
  simpa [Finset.ssubset_iff_subset_ne]