import Mathlib

lemma Filter.tendsto_atTop_atBot_of_antitone_unbounded {α β}
    [Preorder α] [IsDirected α (· ≤ ·)] [Preorder β]
    {f : α → β} (hf : Antitone f)
    (h : ∀ b, ∃ a, f a ≤ b) :
    Filter.Tendsto f Filter.atTop Filter.atBot := by
  sorry
