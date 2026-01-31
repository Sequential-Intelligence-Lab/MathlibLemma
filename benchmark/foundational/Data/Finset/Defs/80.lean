import Mathlib

lemma Finset.exists_not_mem_of_not_subset {α} {s t : Finset α}
    (h : ¬ s ⊆ t) : ∃ a, a ∈ s ∧ a ∉ t := by
  sorry
