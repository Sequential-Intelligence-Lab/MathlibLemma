import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diag_diagonal_update [DecidableEq n] [Zero α]
    (d : n → α) (i : n) (a : α) :
    Matrix.diag (Matrix.diagonal (Function.update d i a)) =
      Function.update d i a := by
  ext j
  -- For any index j, the diagonal entry of the matrix constructed from the updated function is the updated function value at j.
  simp [Matrix.diagonal_apply, Matrix.diag_apply, Function.update_apply]
  -- Simplify the expression to show that the diagonal of the matrix is indeed the updated function.
  <;> split_ifs <;> simp_all
  -- Handle the cases where j equals i or not, ensuring the updated value is correctly placed.
  <;> simp_all
  -- Final simplification to confirm the equality.
  <;> simp_all