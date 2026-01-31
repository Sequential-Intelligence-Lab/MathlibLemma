import Mathlib

lemma Matrix.rank_sub_le_rank_add_rank {R m n} [CommRing R] [Fintype n]
    (A B : Matrix m n R) :
    (A - B).rank ≤ A.rank + B.rank := by
  sorry
