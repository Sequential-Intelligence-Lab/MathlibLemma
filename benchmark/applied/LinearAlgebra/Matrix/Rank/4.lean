import Mathlib

lemma Matrix.rank_add_le_card_width {R m n} [CommRing R] [Fintype n]
    (A B : Matrix m n R) :
    (A + B).rank ≤ Fintype.card n := by
  sorry
