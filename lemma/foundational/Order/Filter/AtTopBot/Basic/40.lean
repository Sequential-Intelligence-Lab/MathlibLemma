import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


theorem Filter.tendsto_atTop_mono_left {α β}
    [Preorder α] [IsDirected α (· ≤ ·)] [Preorder β]
    {l₁ l₂ : Filter α} {f : α → β}
    (h : l₁ ≤ l₂) :
    Filter.Tendsto f l₂ Filter.atTop →
    Filter.Tendsto f l₁ Filter.atTop := by
  intro h2
  intro s hs
  have h4 : f ⁻¹' s ∈ l₂ := by
    apply h2
    exact hs
  have h5 : f ⁻¹' s ∈ l₁ := by
    apply h
    exact h4
  exact h5