import Mathlib

lemma map_toRight_inr {α β} (u : Finset (α ⊕ β)) :
    u.toRight.map (.inr : β ↪ α ⊕ β) ⊆ u := by
  sorry
