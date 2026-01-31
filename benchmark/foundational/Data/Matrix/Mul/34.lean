import Mathlib

lemma dotProduct_mulVec_row
    [Fintype n] [DecidableEq n] [NonUnitalSemiring α]
    (A : Matrix m n α) (v : n → α) (i : m) :
    Matrix.mulVec A v i =
      ∑ j : n, A i j * v j := by
  sorry