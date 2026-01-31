import Mathlib

lemma Filter.map_atBot_le_atBot_iff {α β}
    [Preorder α] [IsDirected α (· ≥ ·)]
    [Preorder β] [IsDirected β (· ≥ ·)]
    {f : α → β} :
    Filter.map f Filter.atBot ≤ Filter.atBot ↔
      ∀ b, ∀ᶠ a in Filter.atBot, f a ≤ b := by
  sorry
