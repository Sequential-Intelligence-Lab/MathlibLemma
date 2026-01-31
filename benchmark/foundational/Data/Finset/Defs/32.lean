import Mathlib

lemma Finset.subset_of_ssubset_of_not_subset {α} {s t u : Finset α}
    (h₁ : s ⊂ t) (h₂ : ¬ s ⊆ u) (h₃ : t ⊆ u) : False := by
  sorry
