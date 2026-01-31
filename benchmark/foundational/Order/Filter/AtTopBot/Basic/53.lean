import Mathlib

lemma Filter.tendsto_atBot_iff_seq_tendsto_real {α}
    [Preorder α] [IsDirected α (· ≥ ·)]
    {f : α → ℝ} :
    Filter.Tendsto f Filter.atBot Filter.atBot ↔
      ∀ M : ℝ, ∃ a, ∀ b ≤ a, f b ≤ M := by
  sorry
