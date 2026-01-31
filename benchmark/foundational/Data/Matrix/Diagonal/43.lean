import Mathlib

lemma diag_updateRow_self [DecidableEq n] (A : Matrix n n α) (i : n) (r : n → α) :
    Matrix.diag (A.updateRow i r) i = r i := by
  sorry