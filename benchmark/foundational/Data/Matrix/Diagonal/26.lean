import Mathlib

lemma diagonal_mul_one
    {α : Type _} {n : Type _} [Semiring α] [DecidableEq n] [Fintype n]
    (d : n → α) :
    Matrix.diagonal d * (1 : Matrix n n α) = Matrix.diagonal d := by
  sorry