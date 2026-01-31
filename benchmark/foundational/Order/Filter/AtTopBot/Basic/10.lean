import Mathlib

lemma Filter.tendsto_atBot_atTop_of_antitone_unbounded {α β}
    [Preorder α] [IsDirected α (· ≥ ·)] [Preorder β]
    {f : α → β} (hf : Antitone f)
    (h : ∀ b, ∃ a, b ≤ f a) :
    Filter.Tendsto f Filter.atBot Filter.atTop := by
  sorry
