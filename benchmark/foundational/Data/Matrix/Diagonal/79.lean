import Mathlib

lemma diag_map_linear [Semiring α] [Semiring β] (f : α →+* β) (A : Matrix n n α) :
    Matrix.diag (A.map f) = fun i => f (A i i) := by
  sorry