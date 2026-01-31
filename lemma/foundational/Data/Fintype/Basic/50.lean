import Mathlib

lemma Fintype.card_eq_card_univ (α : Type*) [Fintype α] :
    Fintype.card α = (Finset.univ : Finset α).card := by
  simpa using (Fintype.card_univ (α := α))