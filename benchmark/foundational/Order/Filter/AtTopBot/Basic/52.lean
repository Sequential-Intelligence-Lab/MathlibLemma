import Mathlib

lemma Filter.tendsto_atTop_iff_seq_tendsto_real {α}
    [Preorder α] [IsDirected α (· ≤ ·)]
    {f : α → ℝ} :
    Filter.Tendsto f Filter.atTop Filter.atTop ↔
      ∀ M : ℝ, ∃ a, ∀ b ≥ a, M ≤ f b := by
  sorry
