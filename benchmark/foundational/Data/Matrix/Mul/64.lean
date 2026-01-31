import Mathlib

lemma mulVec_mul_basis [NonAssocSemiring α] [Fintype n] [DecidableEq n]
    (A B : Matrix n n α) (i : n) :
    Matrix.mulVec (A * B) (Pi.single i (1 : α))
      = Matrix.mulVec A (Matrix.mulVec B (Pi.single i (1 : α))) := by
  sorry