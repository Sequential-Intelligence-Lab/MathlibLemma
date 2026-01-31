import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diag_updateRow_self [DecidableEq n] (A : Matrix n n α) (i : n) (r : n → α) :
    Matrix.diag (A.updateRow i r) i = r i := by
  -- Simplify the expression using the definitions of `Matrix.diag` and `Matrix.updateRow`.
  simp [Matrix.diag, Matrix.updateRow]
  -- Use the `aesop` tactic to automatically solve the remaining goals.
  <;> aesop