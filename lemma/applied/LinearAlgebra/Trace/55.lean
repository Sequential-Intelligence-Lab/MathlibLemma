import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma LinearMap.trace_mul_scalarMatrix
    {R : Type*} [CommRing R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (r : R) :
    ((r • (1 : Matrix n n R))).trace = (Fintype.card n : R) * r := by
  -- Use the linearity of the trace function to separate the scalar multiplication.
  rw [Matrix.trace_smul]
  -- Compute the trace of the identity matrix, which is the cardinality of the finite type n.
  rw [Matrix.trace_one]
  -- Simplify the expression to show that the trace of r • 1 is n • r.
  simp
  -- Use the commutativity of multiplication in the commutative ring R to rearrange the terms.
  <;> simp [mul_comm]
  -- Normalize the expression to ensure it matches the expected form.
  <;> ring