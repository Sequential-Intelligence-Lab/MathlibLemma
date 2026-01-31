import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Matrix.det_blockDiagonal_pi
    {R} [CommRing R]
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    {n : Type*} [Fintype n] [DecidableEq n]
    (A : ι → Matrix n n R) :
    (Matrix.blockDiagonal A : Matrix (n × ι) (n × ι) R).det
      = ∏ i, (A i).det := by
  -- Use the property of determinants for block diagonal matrices
  rw [Matrix.det_blockDiagonal]
  -- Simplify the expression using the fact that the determinant of a block diagonal matrix is the product of the determinants of the blocks
  <;> simp [Matrix.det_pi]
  -- Use the ring structure of the commutative ring R
  <;> ring
  -- Use the commutative property of the ring R
  <;> simp [mul_comm]