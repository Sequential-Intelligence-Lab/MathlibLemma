import Mathlib

lemma Finset.exists_mem_not_subset {α} {s t : Finset α} (h : ¬ s ⊆ t) :
    ∃ a ∈ s, a ∉ t := by
  sorry
