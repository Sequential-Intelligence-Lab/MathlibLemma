import Mathlib

lemma Matrix.rank_rmul_eq_of_isUnit
    {R m n} [CommRing R] [Fintype m] [Fintype n]
    {j : n} {r : R} (hr : IsUnit r) (A : Matrix m n R) :
    (Matrix.rank fun i k => A i k * r) = A.rank := by
  sorry