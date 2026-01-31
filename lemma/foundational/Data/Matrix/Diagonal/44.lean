import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diag_updateRow_ne [Zero α] [DecidableEq n]
    (A : Matrix n n α) {i j : n} (h : j ≠ i) (r : n → α) :
    Matrix.diag (A.updateRow i r) j = A j j := by
  -- Use the definition of the diagonal of a matrix to extract the element at position `j`.
  rw [Matrix.diag_apply]
  -- Simplify the expression using the fact that `j ≠ i` and the definition of `updateRow`.
  simp [h, Matrix.updateRow_apply]
  -- Use `aesop` to handle any remaining straightforward cases or goals.
  <;> aesop