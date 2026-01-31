import Mathlib

open Matrix

variable {α m n : Type _}

lemma dotProduct_vecMul_col
    [Fintype m] [DecidableEq m]
    [Fintype n] [DecidableEq n]
    [NonUnitalSemiring α]
    (A : Matrix m n α) (v : m → α) (j : n) :
    (Matrix.vecMul v A) j = v ⬝ᵥ A.col j := by
  sorry