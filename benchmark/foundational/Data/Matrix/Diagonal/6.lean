import Mathlib

open Matrix

lemma diagonal_ne_zero_iff
    {α n : Type _} [Zero α] [DecidableEq n] {d : n → α} :
    Matrix.diagonal d ≠ (0 : Matrix n n α) ↔ ∃ i, d i ≠ 0 := by
  sorry