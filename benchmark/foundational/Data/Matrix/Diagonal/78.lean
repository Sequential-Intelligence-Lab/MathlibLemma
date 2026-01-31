import Mathlib

open Matrix

lemma diag_submatrix'
    {m n : Type _} {α : Type _}
    (A : Matrix m m α) (e : n → m) :
    Matrix.diag (A.submatrix e e) = Matrix.diag A ∘ e := by
  sorry