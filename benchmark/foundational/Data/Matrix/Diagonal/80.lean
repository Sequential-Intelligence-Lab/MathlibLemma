import Mathlib

open Matrix

lemma diag_add_eq [Add α] [Zero α]
    (A B : Matrix n n α) (i : n) :
    Matrix.diag (A + B) i = A i i + B i i := by
  sorry