import Mathlib

lemma Matrix.rank_eq_zero_iff {R m n} [CommRing R] [Fintype n]
    [Nontrivial R] (A : Matrix m n R) :
    A.rank = 0 ↔ A = 0 := by
  sorry
