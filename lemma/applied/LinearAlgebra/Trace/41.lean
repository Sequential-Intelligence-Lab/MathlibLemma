import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma LinearMap.trace_mulBlockDiagonal_comm
    {R : Type*} [CommRing R]
    {m : Type*} [Fintype m] [DecidableEq m]
    (A B C D : Matrix m m R) :
    (Matrix.blockDiagonal ![A, C] * Matrix.blockDiagonal ![B, D]).trace =
      (Matrix.blockDiagonal ![B, D] * Matrix.blockDiagonal ![A, C]).trace := by
  -- Use the property of trace that trace(AB) = trace(BA) for any two square matrices A and B.
  rw [Matrix.trace_mul_comm]
  -- Simplify the expression using the fact that block diagonal matrices are composed of blocks.
  <;> simp [Matrix.blockDiagonal_mul_blockDiagonal]
  -- Use the ring properties to simplify the expression.
  <;> ring
  -- Use the commutative property of addition to further simplify the expression.
  <;> simp [Finset.sum_comm]
  -- Final simplification to ensure the expression is in the simplest form.
  <;> ring