import Mathlib

lemma Filter.tendsto_atTop_iff_nat {α} [Preorder α] {f : ℕ → α} {l : Filter α} :
    Filter.Tendsto f Filter.atTop l ↔
      ∀ s ∈ l, ∃ N, ∀ n ≥ N, f n ∈ s := by
  sorry
