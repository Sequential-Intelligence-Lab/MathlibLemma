import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma dotProduct_vecMul_col
    [Fintype m] [DecidableEq m]
    [Fintype n] [DecidableEq n]
    [NonUnitalSemiring α]
    (A : Matrix m n α) (v : m → α) (j : n) :
    (Matrix.vecMul v A) j = v ⬝ᵥ A.col j := by
  -- Simplify the expression using the definition of vecMul and dot product
  simp [Matrix.vecMul, dotProduct, Matrix.col]
  -- Use the fact that the sum of the dot product is the same as the dot product of the sum
  <;> rw [← Finset.sum_apply]
  -- Simplify the expression using the properties of the dot product and matrix multiplication
  <;> simp [Matrix.mul_apply, dotProduct, Matrix.col]
  -- Use the ring properties to simplify the expression
  <;> ring