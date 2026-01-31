import Mathlib

open Matrix

lemma Matrix.rank_symm_eq_rank
    {R ι} [Field R] [Fintype ι] [DecidableEq ι]
    (A : Matrix ι ι R)
    (h : A.transpose = A) :
    A.rank = A.transpose.rank := by
  sorry