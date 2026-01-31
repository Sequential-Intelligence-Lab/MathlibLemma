import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Matrix.det_blockDiagonal_fin_two {R} [CommRing R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (A B : Matrix n n R) :
    (Matrix.blockDiagonal (fun b : Fin 2 =>
      match b with
      | 0 => A
      | 1 => B)).det = A.det * B.det := by
  -- We use the fact that the determinant of a block diagonal matrix is the product of the determinants of the diagonal blocks.
  rw [Matrix.det_blockDiagonal]
  -- Simplify the expression by recognizing that the determinant of each block is the product of the determinants of A and B.
  simp [Fin.sum_univ_succ, Fin.sum_univ_zero]
  -- Use the property of determinants that the determinant of a matrix is the product of its eigenvalues, which in this case are the determinants of A and B.
  <;> simp_all [Matrix.det_blockDiagonal]
  -- Combine the results to show that the determinant of the block diagonal matrix is the product of the determinants of A and B.
  <;> simp_all [Matrix.det_blockDiagonal]
  <;> simp_all [Matrix.det_blockDiagonal]
  <;> simp_all [Matrix.det_blockDiagonal]