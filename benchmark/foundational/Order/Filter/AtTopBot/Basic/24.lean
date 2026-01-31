import Mathlib

lemma Filter.map_atBot_le_iff {α β}
    [Preorder α] [IsDirected α (· ≥ ·)]
    {f : α → β} {l : Filter β} :
    Filter.map f Filter.atBot ≤ l ↔
      ∀ s ∈ l, ∃ a, ∀ b ≤ a, f b ∈ s := by
  sorry
