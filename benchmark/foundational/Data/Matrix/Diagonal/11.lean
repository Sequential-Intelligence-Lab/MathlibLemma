import Mathlib

universe u v

open Matrix

lemma diagonal_inj {α : Type u} {n : Type v} [Zero α] [DecidableEq n] :
    Function.LeftInverse
      (Matrix.diag : Matrix n n α → n → α)
      (Matrix.diagonal : (n → α) → Matrix n n α) := by
  sorry