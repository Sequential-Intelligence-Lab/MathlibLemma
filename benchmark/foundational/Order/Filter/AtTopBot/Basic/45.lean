import Mathlib

lemma Filter.tendsto_atBot_of_sandwich {α β}
    [Preorder α] [IsDirected α (· ≥ ·)]
    [Preorder β] [IsDirected β (· ≥ ·)]
    {f g h : α → β}
    (hg : Filter.Tendsto g Filter.atBot Filter.atBot)
    (hh : Filter.Tendsto h Filter.atBot Filter.atBot)
    (h_between : ∀ᶠ a in Filter.atBot, g a ≤ f a ∧ f a ≤ h a) :
    Filter.Tendsto f Filter.atBot Filter.atBot := by
  sorry
