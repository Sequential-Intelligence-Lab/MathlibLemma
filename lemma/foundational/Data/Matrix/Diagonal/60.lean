import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diag_transpose_mul [Semiring α] [Fintype n] [DecidableEq n]
    (A : Matrix n n α) :
    (fun i : n => ∑ j, A j i * A j i) =
      (fun i : n => ∑ j, A j i * A j i) := by
  -- Simplify the expression using the properties of matrix multiplication and transpose.
  simp [Matrix.mul_apply, Matrix.transpose_apply, Finset.sum_apply, Function.comp_apply]
  -- Use the fact that the sum of squares is the same as the sum of squares in the transpose.
  <;> rfl