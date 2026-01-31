import Mathlib

lemma Matrix.rank_toLin' {R m n} [CommRing R] [Fintype m] [Fintype n]
    [DecidableEq m] [DecidableEq n]
    (A : Matrix m n R) :
    (Matrix.toLin' A).rank = A.rank := by
  sorry