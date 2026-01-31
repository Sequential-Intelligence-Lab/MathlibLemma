import Mathlib

lemma Fintype.card_surjective_le {α β : Type*} [Fintype α] [Fintype β]
    (f : α → β) (hf : Function.Surjective f) :
    Fintype.card β ≤ Fintype.card α := by
  classical
  sorry
