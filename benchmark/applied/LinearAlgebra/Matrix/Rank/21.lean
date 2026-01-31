import Mathlib

universe u

lemma Matrix.rank_mul_eq_rank_of_full_rank_right
    {R : Type u} {m n o : Type u}
    [Field R]
    [Fintype m] [Fintype n] [Fintype o]
    [DecidableEq m] [DecidableEq n] [DecidableEq o]
    (A : Matrix m n R) (B : Matrix n o R)
    (hB : B.rank = Fintype.card n) :
    (A * B).rank = A.rank := by
  sorry