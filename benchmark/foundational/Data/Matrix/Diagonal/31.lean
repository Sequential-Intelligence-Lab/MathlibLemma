import Mathlib

lemma diag_scalar [Semiring α] (n : Type*) [Fintype n] [DecidableEq n] (a : α) :
    Matrix.diag (Matrix.scalar n a) = fun _ : n => a := by
  sorry