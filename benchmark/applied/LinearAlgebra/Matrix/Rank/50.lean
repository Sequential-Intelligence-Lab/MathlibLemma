import Mathlib

open Matrix

lemma Matrix.rank_stack_horizontal_ge_max_rank
    {R m n} [CommRing R] [Fintype m] [Fintype n]
    [DecidableEq m] [DecidableEq n]
    (A B : Matrix m n R) :
    max A.rank B.rank ≤
      (Matrix.fromBlocks (A := A) (B := 0) (C := B) (D := 0) :
        Matrix (m ⊕ m) (n ⊕ n) R).rank := by
  sorry