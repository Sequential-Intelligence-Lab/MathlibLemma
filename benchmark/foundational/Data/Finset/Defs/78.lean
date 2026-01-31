import Mathlib

lemma Finset.ssubset_of_subset_of_card_ne {α} [DecidableEq α] {s t : Finset α}
    (h₁ : s ⊆ t) (h₂ : s.card ≠ t.card) : s ⊂ t := by
  sorry
