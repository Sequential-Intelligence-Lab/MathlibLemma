import Mathlib

lemma Filter.tendsto_atBot_iff_seq_tendsto_nat {α}
    [Preorder α] [IsDirected α (· ≥ ·)]
    {f : α → ℕ} :
    Filter.Tendsto f Filter.atBot Filter.atBot ↔
      ∀ N, ∃ a, ∀ b ≤ a, f b ≤ N := by
  sorry
