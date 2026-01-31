import Mathlib

lemma Matrix.rank_colSubtype_le {R m n} [CommRing R] [Fintype n]
    (A : Matrix m n R) (s : Set n) [Fintype s] :
    (A.submatrix id (fun j : s => j.1)).rank ≤ A.rank := by
  sorry
