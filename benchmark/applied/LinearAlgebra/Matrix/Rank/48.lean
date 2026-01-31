import Mathlib

lemma Matrix.rank_stack_vertical_le_add_rank
    {R m m' n} [CommRing R] [Fintype m] [Fintype m'] [Fintype n]
    (A : Matrix m n R) (B : Matrix m' n R) :
    (Matrix.fromBlocks A 0 (0 : Matrix m' n R) B).rank ≤ A.rank + B.rank := by
  sorry