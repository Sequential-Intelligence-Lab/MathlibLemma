import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diagonal_trace_eq_sum
    [Fintype n] [DecidableEq n] [CommSemiring α] (d : n → α) :
    Matrix.trace (Matrix.diagonal d : Matrix n n α) = ∑ i, d i := by
  -- We use the fact that the trace of a diagonal matrix is the sum of its diagonal entries.
  rw [Matrix.trace_diagonal]
  -- The sum of the diagonal entries of a diagonal matrix is the sum of the entries themselves.
  <;> simp
  -- Simplify the expression to confirm the equality.
  <;> rfl