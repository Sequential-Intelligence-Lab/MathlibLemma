import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diag_neg_eq [Neg α] (A : Matrix n n α) (i : n) :
    Matrix.diag (-A) i = - A i i := by
  have h_main : Matrix.diag (-A) i = - A i i := by
    simp [Matrix.diag, Matrix.neg_apply]
    <;>
    rfl
  
  exact h_main