import Mathlib

lemma Matrix.rank_add_rank_le_rank_add_card {R m n} [CommRing R] [Fintype n]
    (A B : Matrix m n R) :
    A.rank + B.rank ≤ (A + B).rank + Fintype.card n := by
  sorry
