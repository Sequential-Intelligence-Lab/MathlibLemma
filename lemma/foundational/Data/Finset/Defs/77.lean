import Mathlib

lemma Finset.empty_ssubset_iff {α} {s : Finset α} :
    (∅ : Finset α) ⊂ s ↔ s ≠ ∅ := by
  simpa [Finset.nonempty_iff_ne_empty] using
    (Finset.empty_ssubset (s := s))