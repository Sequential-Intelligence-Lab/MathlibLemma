import Mathlib

lemma Matrix.rank_smul_le {R m n} [CommRing R] [Fintype n]
    (r : R) (A : Matrix m n R) :
    (r • A).rank ≤ A.rank := by
  sorry
