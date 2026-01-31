import Mathlib

lemma Matrix.rank_stack_horizontal_le_add_rank
    {R m n} [CommRing R] [Fintype m] [Fintype n]
    [DecidableEq m] [DecidableEq n]
    [Fintype (Sum m m)] [Fintype (Sum n n)]
    (A B : Matrix m n R) :
    (Matrix.fromBlocks (A := A) (B := 0) (C := B) (D := 0) :
        Matrix (m ⊕ m) (n ⊕ n) R).rank ≤
      A.rank + B.rank := by
  sorry