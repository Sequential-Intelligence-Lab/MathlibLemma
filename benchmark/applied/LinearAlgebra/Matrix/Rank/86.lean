import Mathlib

lemma Matrix.rank_tr {R n} [Field R] [Fintype n] [DecidableEq n]
    (A : Matrix n n R) :
    A.rank ≤ Fintype.card n := by
  sorry
