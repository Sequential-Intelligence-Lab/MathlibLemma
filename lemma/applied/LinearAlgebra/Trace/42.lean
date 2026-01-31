import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma LinearMap.trace_diagMatrix
    {R : Type*} [CommRing R]
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    (d : ι → R) :
    (Matrix.diagonal d).trace = ∑ i, d i := by
  -- Use the property of trace for diagonal matrices
  rw [Matrix.trace_diagonal]
  -- Simplify the sum using the fact that the trace is the sum of the diagonal entries
  <;> simp
  -- Use the property of finiteness and decidability to conclude the proof
  <;> aesop