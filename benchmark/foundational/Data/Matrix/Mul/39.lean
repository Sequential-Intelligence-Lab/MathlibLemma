import Mathlib

lemma vecMulVec_diag [Mul α] (w : m → α) (v : m → α) :
    Matrix.diag (Matrix.vecMulVec w v) = fun i => w i * v i := by
  sorry
