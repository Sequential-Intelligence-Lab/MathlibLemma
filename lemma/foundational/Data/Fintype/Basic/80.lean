import Mathlib

lemma Finset.card_univ_sigma {α : Type*} [Fintype α]
    (β : α → Type*) [∀ a, Fintype (β a)] :
    (Finset.univ : Finset (Sigma β)).card =
      ∑ a, (Finset.univ : Finset (β a)).card := by
  classical
  -- Rewrite both sides in terms of `Fintype.card`
  change Fintype.card (Sigma β) = _
  change Fintype.card (Sigma β) = ∑ a, Fintype.card (β a)
  -- Now use the standard cardinality result for sigma types
  simpa using Fintype.card_sigma β