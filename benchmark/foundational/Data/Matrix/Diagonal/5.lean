import Mathlib

open Matrix

lemma diagonal_eq_zero_iff [Zero α] [DecidableEq n] {d : n → α} :
    Matrix.diagonal d = (0 : Matrix n n α) ↔ ∀ i, d i = 0 := by
  sorry