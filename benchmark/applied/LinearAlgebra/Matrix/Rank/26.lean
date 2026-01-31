import Mathlib

lemma Matrix.rank_kroneckerMul {R m n m' n'} [Field R]
    [Fintype m] [Fintype n] [Fintype m'] [Fintype n']
    (A : Matrix m n R) (B : Matrix m' n' R) :
    (Matrix.kronecker A B).rank = A.rank * B.rank := by
  sorry
