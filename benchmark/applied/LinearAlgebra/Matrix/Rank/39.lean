import Mathlib

lemma Matrix.rank_cols_le_card_cols {R m n} [CommRing R] [Fintype n]
    (A : Matrix m n R) :
    A.rank ≤ Fintype.card n := by
  sorry
