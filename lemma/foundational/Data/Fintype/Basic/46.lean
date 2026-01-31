import Mathlib

lemma Finset.map_univ_injective {α β : Type*} [Fintype α] [DecidableEq β]
    (f : α ↪ β) :
    (Finset.univ.map f).card = Fintype.card α := by
  calc
    (Finset.univ.map f).card
        = (Finset.univ : Finset α).card := by
          simpa using Finset.card_map f (Finset.univ : Finset α)
    _   = Fintype.card α := by
          simpa using
            (Finset.card_univ : (Finset.univ : Finset α).card = Fintype.card α)