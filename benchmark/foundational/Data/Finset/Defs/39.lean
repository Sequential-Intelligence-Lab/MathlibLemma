import Mathlib

lemma Finset.mem_of_subset_coe {α} {s t : Finset α} {a : α}
    (h : (s : Set α) ⊆ (t : Set α)) (ha : a ∈ s) : a ∈ t := by
  sorry
