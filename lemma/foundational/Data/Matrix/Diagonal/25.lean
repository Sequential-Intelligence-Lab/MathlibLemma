import Mathlib

open Matrix

lemma diagonal_one_mul
  {α : Type _} {n : Type _} [DecidableEq n] [Fintype n] [Semiring α]
  (d : n → α) :
  (1 : Matrix n n α) * Matrix.diagonal d = Matrix.diagonal d := by
  -- This is just the general lemma `one_mul` specialized to matrices.
  simpa using (one_mul (Matrix.diagonal d : Matrix n n α))