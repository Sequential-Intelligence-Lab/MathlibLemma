import Mathlib

lemma diag_comp_diag
  [DecidableEq n] [Zero α] (A : Matrix n n α) :
    Matrix.diag (Matrix.diagonal (Matrix.diag A : n → α)) =
      (Matrix.diag A : n → α) := by
  sorry