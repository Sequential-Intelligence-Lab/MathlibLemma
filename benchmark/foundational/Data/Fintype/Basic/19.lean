import Mathlib

lemma Fintype.card_psigma_prop_left {α : Prop} {β : α → Type*}
    [Decidable α] [∀ a, Fintype (β a)] :
    Fintype.card (PSigma β) =
      if h : α then Fintype.card (β h) else 0 := by
  sorry