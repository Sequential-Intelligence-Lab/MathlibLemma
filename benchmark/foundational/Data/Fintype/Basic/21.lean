import Mathlib

lemma Fintype.card_psigma_prop_prop (α : Prop) (β : α → Prop)
    [Decidable α] [∀ a, Decidable (β a)] :
    Fintype.card (PSigma β) ≤ 1 := by
  sorry