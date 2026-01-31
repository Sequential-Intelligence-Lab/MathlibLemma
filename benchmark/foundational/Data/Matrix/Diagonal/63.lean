import Mathlib

open Matrix

variable {α n : Type _}

lemma diagonal_transpose_eq_self [Zero α] [Fintype n] [DecidableEq n] (d : n → α) :
    (Matrix.diagonal d)ᵀ = Matrix.diagonal d := by
  sorry