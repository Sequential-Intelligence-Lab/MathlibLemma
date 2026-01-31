import Mathlib

lemma Matrix.rank_le_card_nonzero_rows {R m n} [Field R] [Fintype m] [Fintype n]
    (A : Matrix m n R) [Fintype { i // A.row i ≠ 0 }] :
    A.rank ≤ Fintype.card {i // A.row i ≠ 0} := by
  sorry