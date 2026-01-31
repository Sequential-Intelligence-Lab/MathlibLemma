import Mathlib

lemma Matrix.rank_eq_rank_of_mul_left_invertible
    {R m n} [CommRing R] [Fintype m] [Fintype n] [DecidableEq m] [DecidableEq n]
    (A : Matrix m n R) (P : Matrix m m R) (hP : IsUnit P.det) :
    (P * A).rank = A.rank := by
  sorry