import Mathlib

lemma Matrix.rank_le_rank_of_span_rows_le
    {R m n} [Field R] [Finite m] [Fintype n]
    (A B : Matrix m n R)
    (h : Submodule.span R (Set.range A.row) ≤
         Submodule.span R (Set.range B.row)) :
    A.rank ≤ B.rank := by
  sorry