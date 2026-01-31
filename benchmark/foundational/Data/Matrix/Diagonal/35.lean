import Mathlib

lemma diag_eq_iff [Zero α] [DecidableEq n] (A B : Matrix n n α) :
    Matrix.diag A = Matrix.diag B ↔ ∀ i, A i i = B i i := by
  sorry