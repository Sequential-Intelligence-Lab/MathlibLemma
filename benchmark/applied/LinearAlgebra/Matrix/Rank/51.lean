import Mathlib

lemma Matrix.rank_fromBlocks_le_sum
    {R m m' n n'} [CommRing R]
    [Fintype m] [Fintype m'] [Fintype n] [Fintype n']
    (A : Matrix m n R) (B : Matrix m n' R)
    (C : Matrix m' n R) (D : Matrix m' n' R) :
    (Matrix.fromBlocks A B C D).rank ≤
      A.rank + B.rank + C.rank + D.rank := by
  sorry
