import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diagonal_congr'
    {α} {n : Type _} [Zero α] [DecidableEq n]
    (d₁ d₂ : n → α)
    (h : d₁ = d₂) :
    Matrix.diagonal d₁ = (Matrix.diagonal d₂ : Matrix n n α) := by
  -- Since d₁ and d₂ are equal, we can use the equality to show that their diagonal matrices are congruent.
  rw [h]
  -- The diagonal matrices are equal because their diagonal entries are the same.
  <;> rfl