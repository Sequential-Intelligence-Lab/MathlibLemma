import Mathlib

lemma diag_sub_eq [Sub α] (A B : Matrix n n α) (i : n) :
    Matrix.diag (A - B) i = A i i - B i i := by
  sorry