import Mathlib

lemma diag_diagonal_update [DecidableEq n] [Zero α]
    (d : n → α) (i : n) (a : α) :
    Matrix.diag (Matrix.diagonal (Function.update d i a)) =
      Function.update d i a := by
  sorry