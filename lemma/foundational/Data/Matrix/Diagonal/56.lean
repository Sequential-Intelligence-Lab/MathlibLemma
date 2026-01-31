import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diag_kronecker [Semiring α] (A : Matrix m m α) (B : Matrix n n α) :
    Matrix.diag (Matrix.kronecker A B) =
      fun ij : m × n =>
        A ij.1 ij.1 * B ij.2 ij.2 := by
  ext i j
  simp [Matrix.kronecker_apply, Matrix.diag_apply, mul_assoc, mul_comm, mul_left_comm]
  <;> split_ifs <;> rfl