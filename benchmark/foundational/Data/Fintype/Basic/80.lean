import Mathlib

lemma Finset.card_univ_sigma {α : Type*} [Fintype α]
    (β : α → Type*) [∀ a, Fintype (β a)] :
    (Finset.univ : Finset (Sigma β)).card =
      ∑ a, (Finset.univ : Finset (β a)).card := by
  sorry
