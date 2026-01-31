import Mathlib

lemma Filter.tendsto_atTop_of_sandwich {α β}
    [Preorder α] [IsDirected α (· ≤ ·)]
    [Preorder β] [IsDirected β (· ≤ ·)]
    {f g h : α → β}
    (hg : Filter.Tendsto g Filter.atTop Filter.atTop)
    (hh : Filter.Tendsto h Filter.atTop Filter.atTop)
    (h_between : ∀ᶠ a in Filter.atTop, g a ≤ f a ∧ f a ≤ h a) :
    Filter.Tendsto f Filter.atTop Filter.atTop := by
  sorry
