import Mathlib

lemma Fintype.card_prod_left {α β} [Fintype α] [Fintype (α × β)] [Nonempty β] [DecidableEq α] :
    Fintype.card α ≤ Fintype.card (α × β) := by
  sorry