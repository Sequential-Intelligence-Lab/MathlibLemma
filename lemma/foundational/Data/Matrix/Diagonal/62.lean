import Mathlib

lemma diagonal_isSymm
    {n : Type _} {α : Type _} [Zero α] [DecidableEq n] (d : n → α) :
    Matrix.IsSymm (Matrix.diagonal d) := by
  -- Matrix.IsSymm A means Aᵀ = A
  unfold Matrix.IsSymm
  -- Use the lemma that the transpose of a diagonal matrix is itself
  simpa using Matrix.transpose_diagonal (d := d)