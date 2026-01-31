import Mathlib

open Matrix

lemma diagonal_diag
    {α : Type _} {n : Type _} [Fintype n] [DecidableEq n] [Zero α]
    (M : Matrix n n α) :
    Matrix.diagonal (Matrix.diag M) = Matrix.diagonal (Matrix.diag M) := by
  sorry