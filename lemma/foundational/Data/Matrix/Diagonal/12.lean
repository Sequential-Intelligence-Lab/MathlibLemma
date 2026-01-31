import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diag_comp_diagonal [Zero α] [DecidableEq n] (d : n → α) :
    Matrix.diag (Matrix.diagonal d) = d := by
  ext i
  -- For each index i, we need to show that the i-th element of the diagonal of the diagonal matrix of d is equal to the i-th element of d.
  rw [Matrix.diagonal]
  -- Rewrite using the definition of the diagonal of a matrix, which extracts the diagonal elements into a vector.
  simp [Matrix.diag]
  -- Simplify using the definition of the diagonal matrix, which constructs a matrix with the elements of d on the diagonal and zeros elsewhere.
  <;> aesop