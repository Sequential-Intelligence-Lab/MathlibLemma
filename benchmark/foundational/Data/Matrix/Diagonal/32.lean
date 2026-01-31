import Mathlib

lemma diagonal_eq_scalar_iff
    [Semiring α] [DecidableEq n] [Fintype n]
    (d : n → α) (a : α) :
    Matrix.diagonal d = Matrix.scalar n a ↔ ∀ i, d i = a := by
  sorry