import Mathlib

lemma diagonal_isDiag [Zero α] [DecidableEq n] (d : n → α) :
    Matrix.IsDiag (Matrix.diagonal d : Matrix n n α) := by
  sorry