import Mathlib

lemma Finset.mem_of_ssubset_of_mem {α} {s t : Finset α} {a : α}
    (h : s ⊂ t) (ha : a ∈ s) : a ∈ t := by
  sorry
