import Mathlib

lemma diag_comp_diagonal [Zero α] [DecidableEq n] (d : n → α) :
    Matrix.diag (Matrix.diagonal d) = d := by
  sorry