import Mathlib

lemma Finset.card_univ_sum {α β : Type*} [Fintype α] [Fintype β] :
    (Finset.univ : Finset (α ⊕ β)).card =
      (Finset.univ : Finset α).card + (Finset.univ : Finset β).card := by
  sorry
