import Mathlib

lemma Filter.map_atTop_le_iff {α β}
    [Preorder α] [IsDirected α (· ≤ ·)]
    {f : α → β} {l : Filter β} :
    Filter.map f Filter.atTop ≤ l ↔
      ∀ s ∈ l, ∃ a, ∀ b ≥ a, f b ∈ s := by
  sorry
