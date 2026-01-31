import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma trace_eq_sum_diag [Fintype n] [Semiring α] (A : Matrix n n α) :
    Matrix.trace A = ∑ i, A i i := by
  -- Simplify the trace definition using the sum of diagonal elements.
  simp [Matrix.trace]
  -- Use the fact that the trace is the sum of the diagonal elements.
  <;> rfl
  -- Simplify the expression using the ring structure of the semiring.
  <;> simp [Matrix.trace]
  -- Normalize the expression to ensure correctness.
  <;> rfl