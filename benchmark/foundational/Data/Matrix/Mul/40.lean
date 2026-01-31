import Mathlib

open Matrix

lemma vecMulVec_scalar
    {α m} [Semiring α] [Fintype m] [DecidableEq m]
    (a : α) (w v : m → α) :
    Matrix.vecMulVec (fun i => a * w i) v =
      Matrix.diagonal (fun _ : m => a) * Matrix.vecMulVec w v := by
  sorry