import Mathlib

lemma vecMul_diagonal_right [NonUnitalNonAssocSemiring α] [Fintype m] [DecidableEq m]
    (v w : m → α) :
    Matrix.vecMul v (Matrix.diagonal w) = fun i => v i * w i := by
  sorry