import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Filter.tendsto_atBot_mono_left {α β}
    [Preorder α] [IsDirected α (· ≥ ·)] [Preorder β]
    {l₁ l₂ : Filter α} {f : α → β}
    (h : l₁ ≤ l₂) :
    Filter.Tendsto f l₂ Filter.atBot →
    Filter.Tendsto f l₁ Filter.atBot := by
  intro h_tendsto
  intro s hs
  apply h
  apply h_tendsto
  exact hs