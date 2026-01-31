import Mathlib

lemma diag_updateRow_ne [Zero α] [DecidableEq n]
    (A : Matrix n n α) {i j : n} (h : j ≠ i) (r : n → α) :
    Matrix.diag (A.updateRow i r) j = A j j := by
  sorry