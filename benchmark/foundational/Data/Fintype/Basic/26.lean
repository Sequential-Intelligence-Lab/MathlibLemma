import Mathlib

lemma Fintype.card_quotient_le_of_surjective
    {α β : Type _} [Fintype α] [Setoid β] [Fintype (Quot (instSetoidβ))]
    (f : α → β) (h : Function.Surjective f) :
    Fintype.card (Quot (instSetoidβ)) ≤ Fintype.card α := by
  sorry