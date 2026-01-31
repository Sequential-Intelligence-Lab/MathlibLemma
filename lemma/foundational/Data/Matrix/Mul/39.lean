import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma vecMulVec_diag [Mul α] (w : m → α) (v : m → α) :
    Matrix.diag (Matrix.vecMulVec w v) = fun i => w i * v i := by
  -- Use the definition of the diagonal of a matrix
  ext i
  -- Simplify the expression using the definition of the outer product and the diagonal
  simp [Matrix.vecMulVec, Matrix.diag]
  -- Use the ring tactic to simplify the algebraic expression
  <;> ring