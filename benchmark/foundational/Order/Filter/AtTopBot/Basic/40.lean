import Mathlib

lemma Filter.tendsto_atTop_mono_left {α β}
    [Preorder α] [IsDirected α (· ≤ ·)] [Preorder β]
    {l₁ l₂ : Filter α} {f : α → β}
    (h : l₁ ≤ l₂) :
    Filter.Tendsto f l₂ Filter.atTop →
    Filter.Tendsto f l₁ Filter.atTop := by
  sorry