import Mathlib

lemma Matrix.rank_map_subtype_le {R m n} [CommRing R] [Fintype n]
    (A : Matrix m n R) (p : Type*) [Fintype p] [DecidableEq p] (f : p → m) :
    (A.submatrix f id).rank ≤ A.rank := by
  sorry