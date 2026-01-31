import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diag_sub_eq [Sub α] (A B : Matrix n n α) (i : n) :
    Matrix.diag (A - B) i = A i i - B i i := by
  -- Simplify the expression using the definition of matrix subtraction and the diagonal function.
  simp [Matrix.sub_apply, Matrix.diag]
  -- The simplification directly yields the desired result based on the definitions.
  <;> rfl