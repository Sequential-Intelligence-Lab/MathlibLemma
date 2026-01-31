import Mathlib

lemma Matrix.rank_congr_left {R m n o} [CommRing R] [Fintype m] [Fintype n] [Fintype o]
    (A : Matrix m n R) (e : o ≃ m) :
    (A.submatrix e id).rank = A.rank := by
  sorry