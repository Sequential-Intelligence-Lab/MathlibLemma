import Mathlib

lemma LinearMap.trace_blockMatrix_2x2
    {R : Type*} [CommRing R]
    {m n : Type*} [Fintype m] [Fintype n] [DecidableEq m] [DecidableEq n]
    (A : Matrix m m R) (B : Matrix m n R)
    (C : Matrix n m R) (D : Matrix n n R) :
    (Matrix.fromBlocks A B C D).trace = A.trace + D.trace := by
  sorry
