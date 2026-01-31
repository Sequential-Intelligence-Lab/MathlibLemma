import Mathlib

lemma Finset.ssubset_iff_exists_insert_subset {α} [DecidableEq α] {s t : Finset α} :
    s ⊂ t ↔ ∃ a ∈ t, s ⊆ t.erase a := by
  sorry
