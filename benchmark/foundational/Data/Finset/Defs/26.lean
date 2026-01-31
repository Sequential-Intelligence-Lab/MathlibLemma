import Mathlib

lemma Finset.ssubset_of_subset_of_not_subset {α} {s t u : Finset α}
    (h₁ : s ⊆ t) (h₂ : ¬ t ⊆ u) (h₃ : u ⊆ t) : u ⊂ t := by
  sorry
