import Mathlib

lemma Finset.subset_of_subset_of_subset {α} {s t u v : Finset α}
    (h₁ : s ⊆ t) (h₂ : t ⊆ u) (h₃ : u ⊆ v) : s ⊆ v := by
  sorry
