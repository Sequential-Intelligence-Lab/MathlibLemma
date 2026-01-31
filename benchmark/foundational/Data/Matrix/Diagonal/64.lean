import Mathlib

variable {n α : Type*}

lemma diag_one_mul [Semiring α] [Fintype n] [DecidableEq n]
    (A : Matrix n n α) :
    Matrix.diag ((1 : Matrix n n α) * A) = Matrix.diag A := by
  sorry