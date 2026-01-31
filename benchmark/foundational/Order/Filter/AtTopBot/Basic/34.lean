import Mathlib

lemma Filter.tendsto_atTop_iff_seq_tendsto_nat {α}
    [Preorder α] [IsDirected α (· ≤ ·)]
    {f : α → ℕ} :
    Filter.Tendsto f Filter.atTop Filter.atTop ↔
      ∀ N, ∃ a, ∀ b ≥ a, N ≤ f b := by
  sorry
