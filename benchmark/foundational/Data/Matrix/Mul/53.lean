import Mathlib

open Matrix

lemma vecMul_stdBasis [NonAssocSemiring α] [Fintype m] [DecidableEq m]
    (A : Matrix m n α) (i : m) :
    Matrix.vecMul (Pi.single i 1 : m → α) A = A.row i := by
  sorry