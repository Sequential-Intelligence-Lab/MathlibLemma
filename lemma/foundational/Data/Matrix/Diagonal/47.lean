import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diag_diagonal_eq_map [DecidableEq n] [Zero α] {d : n → α} :
    Matrix.diag (Matrix.diagonal d) = d := by
  ext i
  simp [Matrix.diag, Matrix.diagonal]
  <;> rfl