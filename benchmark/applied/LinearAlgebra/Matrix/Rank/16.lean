import Mathlib

lemma Matrix.rank_congr_right
    {R : Type _} {m n o : Type _}
    [Field R]
    [Fintype m] [Fintype n] [Fintype o]
    [DecidableEq m] [DecidableEq n] [DecidableEq o]
    (A : Matrix m n R) (e : n ≃ o) :
    (A.submatrix id e.symm).rank = A.rank := by
  sorry