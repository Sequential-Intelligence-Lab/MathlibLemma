import Mathlib

lemma Filter.tendsto_atTop_of_eventually_ge {α β}
    [Preorder α] [IsDirected α (· ≤ ·)]
    [Preorder β] [IsDirected β (· ≤ ·)]
    {f : α → β}
    (h : ∀ b, ∀ᶠ a in Filter.atTop, b ≤ f a) :
    Filter.Tendsto f Filter.atTop Filter.atTop := by
  sorry
