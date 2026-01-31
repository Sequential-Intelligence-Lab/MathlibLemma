import Mathlib

open Matrix

lemma diag_neg_eq [Neg α] (A : Matrix n n α) (i : n) :
    Matrix.diag (-A) i = - A i i := by
  sorry