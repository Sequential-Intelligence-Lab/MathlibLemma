import Mathlib

lemma Fintype.exists_bijective_iff_card_eq {α β : Type*} [Fintype α] [Fintype β] :
    (∃ f : α → β, Function.Bijective f) ↔ Fintype.card α = Fintype.card β := by
  classical
  sorry
