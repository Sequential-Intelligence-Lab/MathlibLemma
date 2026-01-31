import Mathlib

lemma Matrix.rank_le_rank_add_rank_mul
    {R m n o} [CommRing R] [Fintype n] [Fintype o]
    (A : Matrix m n R) (B : Matrix n o R) :
    (A * B).rank ≤ A.rank + B.rank := by
  sorry
