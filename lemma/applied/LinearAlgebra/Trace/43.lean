import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma LinearMap.trace_blockId
    {R : Type*} [CommRing R]
    {m n : ℕ} :
    Matrix.trace (1 : Matrix (Fin (m + n)) (Fin (m + n)) R) =
      (m + n : R) := by
  -- Use the definition of the trace of the identity matrix
  rw [Matrix.trace_one]
  -- Simplify the expression using the fact that the trace of the identity matrix is the sum of its diagonal elements
  <;> simp [Fin.sum_univ_succ]
  -- Normalize the numerical expression to confirm the result
  <;> norm_num
  -- Use linear arithmetic to confirm the final result
  <;> linarith