import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma LinearMap.trace_blockMatrix_upperTriangular
    {R : Type*} [CommRing R]
    {n : Type*} [Fintype n] [DecidableEq n] [LT n]
    (U N : Matrix n n R)
    (hN : (∀ i j, i < j → N i j = 0) ∧ (∀ i, N i i = 0)) :
    (U + N).trace = U.trace := by
  -- Extract the conditions on N from the hypothesis
  have hN' := hN.1
  have hN'' := hN.2
  -- Use the fact that the trace of a matrix is the sum of its diagonal entries
  rw [Matrix.trace, Matrix.trace]
  -- Simplify the expression by considering the diagonal entries of U + N
  simp [Matrix.add_apply, hN', hN'']