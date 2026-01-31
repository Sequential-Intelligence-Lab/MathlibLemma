import Mathlib

open Matrix

lemma mulVec_stdBasis [NonAssocSemiring α] [Zero α]
    [Fintype n] [DecidableEq n]
    (A : Matrix m n α) (j : n) :
    Matrix.mulVec A (Pi.single j 1 : n → α) = A.col j := by
  sorry