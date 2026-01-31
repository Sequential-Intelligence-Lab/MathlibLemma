import Mathlib

lemma Filter.tendsto_atTop_iff_eventually_ge {α β}
    [Preorder α] [IsDirected α (· ≤ ·)]
    [Preorder β] {f : α → β} {b : β} :
    Filter.Tendsto f Filter.atTop Filter.atTop ↔
      ∀ b₀, ∀ᶠ a in Filter.atTop, b₀ ≤ f a := by
  sorry
