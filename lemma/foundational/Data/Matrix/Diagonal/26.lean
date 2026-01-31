import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diagonal_mul_one
    {α : Type _} {n : Type _} [Semiring α] [DecidableEq n] [Fintype n]
    (d : n → α) :
    Matrix.diagonal d * (1 : Matrix n n α) = Matrix.diagonal d := by
  -- Simplify the expression using the properties of matrix multiplication and the identity matrix.
  simp [Matrix.mul_apply, Matrix.one_apply, Matrix.diagonal_apply, Finset.sum_ite]
  -- Use the fact that the identity matrix has ones on the diagonal and zeros elsewhere.
  -- This simplifies the sum to a single term where the indices match, preserving the original diagonal matrix.
  <;> aesop