import Mathlib

lemma Finset.card_univ_product {α β : Type*} [Fintype α] [Fintype β] :
    (Finset.univ : Finset (α × β)).card =
      (Finset.univ : Finset α).card * (Finset.univ : Finset β).card := by
  classical
  simpa [Finset.card_univ] using
    (Fintype.card_prod (α := α) (β := β))