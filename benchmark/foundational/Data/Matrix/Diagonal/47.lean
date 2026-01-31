import Mathlib

lemma diag_diagonal_eq_map [DecidableEq n] [Zero α] {d : n → α} :
    Matrix.diag (Matrix.diagonal d) = d := by
  sorry