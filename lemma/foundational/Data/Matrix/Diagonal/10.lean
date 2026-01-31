import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diagonal_reindex_embedding [Zero α] [DecidableEq n]
    (d : n → α) (e : n ↪ n) :
    (Matrix.diagonal d).submatrix e e = Matrix.diagonal (d ∘ e) := by
  ext i j
  simp [Matrix.submatrix_apply, Matrix.diagonal_apply, eq_comm]
  -- For each entry (i, j) in the matrices, we compare the entries.
  -- If i ≠ j, both sides are 0.
  -- If i = j, both sides are d (e i).
  <;> aesop