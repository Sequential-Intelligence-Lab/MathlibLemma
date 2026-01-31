import Mathlib

lemma diagonal_isSymm
    {n : Type _} {α : Type _} [Zero α] [DecidableEq n] (d : n → α) :
    Matrix.IsSymm (Matrix.diagonal d) := by
  sorry