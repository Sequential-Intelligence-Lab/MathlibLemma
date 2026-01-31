import Mathlib

lemma Finset.exists_mem_of_ssubset {α} {s t : Finset α}
    (h : s ⊂ t) : ∃ a, a ∈ t ∧ a ∉ s := by
  sorry
