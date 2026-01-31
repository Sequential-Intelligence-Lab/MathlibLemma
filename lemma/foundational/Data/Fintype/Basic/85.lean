import Mathlib

lemma Finset.card_univ_sum {α β : Type*} [Fintype α] [Fintype β] :
    (Finset.univ : Finset (α ⊕ β)).card =
      (Finset.univ : Finset α).card + (Finset.univ : Finset β).card := by
  -- Reduce to Fintype.card-level statement and use Fintype.card_sum
  calc
    (Finset.univ : Finset (α ⊕ β)).card
        = Fintype.card (α ⊕ β) := by
          simpa using
            (Finset.card_univ : (Finset.univ : Finset (α ⊕ β)).card =
              Fintype.card (α ⊕ β))
    _ = Fintype.card α + Fintype.card β := Fintype.card_sum (α := α) (β := β)
    _ = (Finset.univ : Finset α).card + (Finset.univ : Finset β).card := by
          simpa [Finset.card_univ]