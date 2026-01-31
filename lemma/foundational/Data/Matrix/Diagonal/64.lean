import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diag_one_mul [Semiring α] [Fintype n] [DecidableEq n]
    (A : Matrix n n α) :
    Matrix.diag ((1 : Matrix n n α) * A) = Matrix.diag A := by
  -- Simplify the expression using the definition of matrix multiplication and the properties of the identity matrix.
  simp [Matrix.mul_apply, Matrix.one_apply, Matrix.diag_apply, Finset.sum_ite, Finset.filter_eq,
    Finset.sum_singleton]
  -- Use the extensionality principle to show that the diagonals are equal.
  <;> ext i
  -- Consider the cases where the indices are equal or not.
  <;> fin_cases i <;> simp