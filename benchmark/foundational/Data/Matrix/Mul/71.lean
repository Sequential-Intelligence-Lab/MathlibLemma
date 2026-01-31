import Mathlib

open Matrix

lemma mulVec_transpose_mulVec
    (α : Type _) (m n : Type _)
    [NonUnitalCommSemiring α]
    [Fintype n] [Fintype m]
    (A : Matrix n m α) (v : n → α) :
    Matrix.mulVec (Matrix.transpose A) v = Matrix.vecMul v A := by
  sorry