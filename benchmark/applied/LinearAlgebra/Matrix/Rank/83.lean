import Mathlib

lemma Matrix.rank_antisymm_eq_rank
    {R n} [Field R] [Fintype n] [DecidableEq n]
    (A : Matrix n n R)
    (h : Matrix.transpose A = -A) :
    Matrix.rank A = Matrix.rank (Matrix.transpose A) := by
  sorry