import Mathlib

lemma Filter.map_atTop_le_atTop_iff {α β}
    [Preorder α] [IsDirected α (· ≤ ·)]
    [Preorder β] [IsDirected β (· ≤ ·)]
    {f : α → β} :
    Filter.map f Filter.atTop ≤ Filter.atTop ↔
      ∀ b, ∀ᶠ a in Filter.atTop, b ≤ f a := by
  sorry
