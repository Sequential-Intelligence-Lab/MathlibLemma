import Mathlib

lemma diag_diagonal_comp
    {α n : Type _} [Zero α] [DecidableEq n] (d : n → α) :
    Matrix.diag (Matrix.diagonal (Matrix.diag (Matrix.diagonal d))) = d := by
  sorry