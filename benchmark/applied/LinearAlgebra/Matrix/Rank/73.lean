import Mathlib

lemma Matrix.rank_eq_rank_of_eq_span_cols {R m n} [CommRing R] [Fintype n]
    (A B : Matrix m n R)
    (h : Submodule.span R (Set.range A.col) =
         Submodule.span R (Set.range B.col)) :
    A.rank = B.rank := by
  sorry
