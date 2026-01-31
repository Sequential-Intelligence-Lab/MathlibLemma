import Mathlib

lemma Matrix.rank_smul_eq_of_isUnit {R m n} [CommRing R] [Fintype n]
    {i : m} {r : R} (hr : IsUnit r) (A : Matrix m n R) :
    (r • A).rank = A.rank := by
  sorry