import Mathlib

open Matrix

lemma mulVec_single_coord [NonUnitalNonAssocSemiring α] [Fintype n] [DecidableEq n]
    (A : Matrix m n α) (i : n) (x : α) :
    Matrix.mulVec A (Pi.single i x : n → α) =
      MulOpposite.op x • A.col i := by
  sorry