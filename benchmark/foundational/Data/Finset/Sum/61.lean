import Mathlib

lemma map_toLeft_inl {α β} (u : Finset (α ⊕ β)) :
    u.toLeft.map (.inl : α ↪ α ⊕ β) ⊆ u := by
  sorry
