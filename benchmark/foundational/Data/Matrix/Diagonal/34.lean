import Mathlib

lemma isDiag_iff [Zero α] [DecidableEq n] (A : Matrix n n α) :
    Matrix.IsDiag A ↔ ∀ i j, i ≠ j → A i j = 0 := by
  sorry
