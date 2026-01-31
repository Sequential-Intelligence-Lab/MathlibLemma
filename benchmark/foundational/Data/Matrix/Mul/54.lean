import Mathlib

lemma mulVec_diagonal_left [NonUnitalNonAssocSemiring α] [Fintype m] [DecidableEq m]
    (v w : m → α) :
    Matrix.mulVec (Matrix.diagonal v) w = fun i => v i * w i := by
  sorry