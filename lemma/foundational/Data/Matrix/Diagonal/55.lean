import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma trace_eq_sum_diag'
  [Semiring α] [Fintype n] (A : Matrix n n α) :
  Matrix.trace A = ∑ i, Matrix.diag A i := by
  rw [Matrix.trace]
  -- Rewrite the trace using the definition, which is the sum of the diagonal elements.
  <;> simp [Matrix.diag]
  -- Simplify the expression using the definition of `Matrix.diag`.
  <;> rfl
  -- Confirm that the left-hand side equals the right-hand side.

lemma trace_eq_sum_diag''
  [Semiring α] [Fintype n] (A : Matrix n n α) :
  Matrix.trace A = ∑ i, A i i := by
  rw [Matrix.trace]
  -- Rewrite the trace using the definition, which is the sum of the diagonal elements.
  <;> simp [Matrix.diag]
  -- Simplify the expression using the definition of `Matrix.diag`.
  <;> rfl
  -- Confirm that the left-hand side equals the right-hand side.