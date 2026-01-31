import Mathlib

lemma Matrix.rank_rows_le_card_rows {R m n} [CommRing R] [Fintype m] [Fintype n]
    (A : Matrix m n R) :
    A.rank ≤ Fintype.card m := by
  sorry