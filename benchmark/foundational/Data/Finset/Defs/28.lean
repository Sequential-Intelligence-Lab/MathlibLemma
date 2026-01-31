import Mathlib

lemma Finset.ssubset_of_subset_of_exists_not_mem {α} {s t : Finset α}
    (h₁ : s ⊆ t) (h₂ : ∃ a ∈ t, a ∉ s) : s ⊂ t := by
  sorry
