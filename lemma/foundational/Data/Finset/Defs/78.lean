import Mathlib

lemma Finset.ssubset_of_subset_of_card_ne {α} [DecidableEq α] {s t : Finset α}
    (h₁ : s ⊆ t) (h₂ : s.card ≠ t.card) : s ⊂ t := by
  classical
  refine And.intro h₁ ?_
  intro hts
  apply h₂
  have h_eq : s = t := Finset.Subset.antisymm h₁ hts
  simpa [h_eq]