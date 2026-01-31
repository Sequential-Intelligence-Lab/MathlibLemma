import Mathlib

open Matrix

lemma Matrix.rank_le_card_nonzero_cols {R m n} [Field R] [Fintype n]
    (A : Matrix m n R) [Fintype { j // A.col j ≠ 0 }] :
    A.rank ≤ Fintype.card {j // A.col j ≠ 0} := by
  sorry