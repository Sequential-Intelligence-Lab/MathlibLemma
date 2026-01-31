import Mathlib

lemma diagonal_diag_eq_self_of_isDiag [Zero α] [DecidableEq n]
    {A : Matrix n n α} (h : Matrix.IsDiag A) :
    Matrix.diagonal (Matrix.diag A) = A := by
  sorry