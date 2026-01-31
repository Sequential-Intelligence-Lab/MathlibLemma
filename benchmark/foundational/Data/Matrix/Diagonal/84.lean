import Mathlib

lemma diag_smul_eq [SMul R α] (r : R) (A : Matrix n n α) (i : n) :
    Matrix.diag (r • A) i = r • A i i := by
  sorry