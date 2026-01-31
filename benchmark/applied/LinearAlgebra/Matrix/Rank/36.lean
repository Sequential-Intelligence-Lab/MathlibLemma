import Mathlib

lemma Matrix.rank_rowSubtype_le {R m n} [CommRing R] [Fintype n]
    (A : Matrix m n R) (s : Set m) [Fintype s] :
    (A.submatrix (fun i : s => i.1) id).rank ≤ A.rank := by
  sorry
