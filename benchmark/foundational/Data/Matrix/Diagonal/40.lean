import Mathlib

open Matrix

lemma diag_map_ringHom [Semiring α] [Semiring β]
    (f : α →+* β) (A : Matrix n n α) :
    Matrix.diag (Matrix.map A f) = fun i => f (Matrix.diag A i) := by
  sorry