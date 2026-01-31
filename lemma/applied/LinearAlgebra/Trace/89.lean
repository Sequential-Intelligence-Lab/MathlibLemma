import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma LinearMap.trace_matrix_conjSimilarity
    {R : Type*} [CommRing R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (P A : Matrix n n R) (hP : IsUnit P.det) :
    (P * A * P⁻¹).trace = A.trace := by
  -- Use the cyclic property of trace to rearrange the matrices inside the trace operator.
  rw [Matrix.trace_mul_comm]
  -- Simplify using the fact that P * P⁻¹ = I, where I is the identity matrix.
  simp [hP]
  -- The simplification shows that the trace of P * A * P⁻¹ is equal to the trace of A.
  <;> rfl