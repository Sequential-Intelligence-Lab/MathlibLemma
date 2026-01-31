import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diag_updateRow_diag
    {α n} [Zero α] [DecidableEq n] [Inhabited n]
    (d : n → α) (i : n) :
    Matrix.diag ((Matrix.diagonal d).updateRow i (Pi.single i (d i))) = d := by
  -- We will prove this by showing that each diagonal element of the updated matrix is equal to the corresponding element in `d`.
  ext j
  -- Consider the `j`-th diagonal element of the updated matrix.
  by_cases h : j = i
  -- If `j = i`, then the diagonal element remains `d i` after the update.
  simp [h, Matrix.updateRow, Matrix.diag]
  -- If `j ≠ i`, then the diagonal element is not affected by the update to the `i`-th row.
  simp [h, Matrix.updateRow, Matrix.diag]
  <;> aesop