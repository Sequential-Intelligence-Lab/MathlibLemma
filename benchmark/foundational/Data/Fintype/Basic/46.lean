import Mathlib

lemma Finset.map_univ_injective {α β : Type*} [Fintype α] [DecidableEq β]
    (f : α ↪ β) :
    (Finset.univ.map f).card = Fintype.card α := by
  sorry
