import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diag_diagonal_comp
    {α n : Type _} [Zero α] [DecidableEq n] (d : n → α) :
    Matrix.diag (Matrix.diagonal (Matrix.diag (Matrix.diagonal d))) = d := by
  -- Use the property that the diagonal of a diagonal matrix is the original list.
  rw [Matrix.diag_diagonal]
  -- Simplify the expression by applying the key property twice.
  <;> simp [Matrix.diag_diagonal]
  -- Use the ring tactic to handle any algebraic simplifications.
  <;> ring
  -- Use the aesop tactic to handle any remaining logical simplifications.
  <;> aesop