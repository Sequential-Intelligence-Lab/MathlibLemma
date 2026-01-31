import Mathlib

lemma Matrix.rank_diag_eq_number_nonzero_diag {R m} [Field R] [DecidableEq m] [Fintype m]
    (d : m → R) [Fintype { i // d i ≠ 0 }] :
    (Matrix.diagonal d).rank = Fintype.card {i // d i ≠ 0} := by
  sorry