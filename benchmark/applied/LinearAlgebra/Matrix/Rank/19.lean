import Mathlib

lemma Matrix.rank_eq_rank_of_mul_right_invertible
    {R m n} [CommRing R] [Fintype m] [Fintype n] [DecidableEq n]
    (A : Matrix m n R) (Q : Matrix n n R) (hQ : IsUnit Q.det) :
    (A * Q).rank = A.rank := by
  sorry