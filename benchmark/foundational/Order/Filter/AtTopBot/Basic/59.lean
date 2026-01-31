import Mathlib

lemma Filter.tendsto_atBot_of_eventually_le {α β}
    [Preorder α] [IsDirected α (· ≥ ·)]
    [Preorder β] [IsDirected β (· ≥ ·)]
    {f : α → β}
    (h : ∀ b, ∀ᶠ a in Filter.atBot, f a ≤ b) :
    Filter.Tendsto f Filter.atBot Filter.atBot := by
  sorry
