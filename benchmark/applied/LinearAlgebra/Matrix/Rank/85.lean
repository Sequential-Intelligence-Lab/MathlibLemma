import Mathlib

lemma Matrix.rank_add_rank_le_card_height_add_card_width
    {R m n} [CommRing R] [Fintype m] [Fintype n]
    (A : Matrix m n R) :
    A.rank + A.rank ≤ Fintype.card m + Fintype.card n := by
  sorry
