import Mathlib

lemma Matrix.rank_neg_eq {R m n} [CommRing R] [Fintype n]
    (A : Matrix m n R) :
    (-A).rank = A.rank := by
  sorry
