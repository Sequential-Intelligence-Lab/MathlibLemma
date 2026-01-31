import Mathlib

open Matrix

lemma vecMulVec_scalar
    {α m} [Semiring α] [Fintype m] [DecidableEq m]
    (a : α) (w v : m → α) :
    Matrix.vecMulVec (fun i => a * w i) v =
      Matrix.diagonal (fun _ : m => a) * Matrix.vecMulVec w v := by
  -- Prove equality of matrices by extensionality
  ext i j
  -- Expand definitions and simplify both sides
  simp [Matrix.vecMulVec, Matrix.mul_apply, Matrix.diagonal, mul_left_comm, mul_assoc]