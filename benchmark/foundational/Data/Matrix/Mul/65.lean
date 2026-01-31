import Mathlib

open Matrix

lemma vecMul_mul_basis
    [NonAssocSemiring α] [Fintype n] [DecidableEq n]
    (A B : Matrix n n α) (i : n) :
    Matrix.vecMul (fun j => Pi.single i (1 : α) j) (A * B)
      = Matrix.vecMul (Matrix.vecMul (fun j => Pi.single i (1 : α) j) A) B := by
  sorry