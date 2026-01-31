import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diag_zero_eq [Zero α] (i : n) :
    Matrix.diag (0 : Matrix n n α) i = 0 := by
  -- Simplify the expression using the definition of the zero matrix and the diagonal function.
  simp [Matrix.diag, Matrix.zero_apply]
  -- Since the zero matrix has all elements zero, the diagonal elements are also zero.
  -- This is a direct consequence of the definitions involved.
  <;> simp_all
  <;> aesop