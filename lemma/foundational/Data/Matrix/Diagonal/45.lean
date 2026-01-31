import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diag_updateColumn_self
    [DecidableEq n] (A : Matrix n n α) (i : n) (c : n → α) :
    (A.updateCol i c).diag i = c i := by
  -- Simplify the expression using the definition of updateCol and diag.
  simp [Matrix.updateCol, Matrix.diag]
  -- The updateCol operation replaces the i-th column of A with c.
  -- The diag operation retrieves the diagonal element at position i.
  -- Since the i-th column is replaced with c, the diagonal element at position i is c i.
  <;> aesop