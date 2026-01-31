import Mathlib

open Matrix

variable {α m n : Type _}

lemma diag_diagonal_submatrix [Zero α] [DecidableEq m] (d : m → α) (e : n → m) :
    Matrix.diag ((Matrix.diagonal d).submatrix e e) = d ∘ e := by
  sorry