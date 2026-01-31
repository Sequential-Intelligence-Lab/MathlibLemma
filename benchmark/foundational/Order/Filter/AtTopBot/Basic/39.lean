import Mathlib

lemma Filter.tendsto_atBot_iff_eventually_le {α β}
    [Preorder α] [IsDirected α (· ≥ ·)]
    [Preorder β] {f : α → β} {b : β} :
    Filter.Tendsto f Filter.atBot Filter.atBot ↔
      ∀ b₀, ∀ᶠ a in Filter.atBot, f a ≤ b₀ := by
  sorry
