import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diagonal_congr [Zero α] [DecidableEq n] {d₁ d₂ : n → α}
    (h : ∀ i, d₁ i = d₂ i) : Matrix.diagonal d₁ = Matrix.diagonal d₂ := by
  -- Use the fact that the diagonal matrices are equal entry-wise to show their equality.
  apply Matrix.ext
  intro i j
  -- Consider the cases where i and j are equal or not.
  by_cases h₀ : i = j
  -- If i = j, use the given equality of diagonal entries.
  · simp_all [Matrix.diagonal_apply]
  -- If i ≠ j, show that the off-diagonal entries are zero.
  · simp_all [Matrix.diagonal_apply]