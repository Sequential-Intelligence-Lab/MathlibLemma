import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diag_add_eq [Add α] [Zero α]
    (A B : Matrix n n α) (i : n) :
    Matrix.diag (A + B) i = A i i + B i i := by
  -- Simplify the expression using the definition of matrix addition and the diag function.
  simp [Matrix.diag, Matrix.add_apply]
  -- Use the Aesop tactic to solve the goal by applying known lemmas and rules.
  <;> aesop