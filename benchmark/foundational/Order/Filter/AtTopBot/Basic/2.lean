import Mathlib

lemma Filter.tendsto_atBot_iff_nat {α} [Preorder α] {f : ℕ → α} {l : Filter α} :
    Filter.Tendsto f Filter.atBot l ↔
      ∀ s ∈ l, ∃ N, ∀ n ≤ N, f n ∈ s := by
  sorry
