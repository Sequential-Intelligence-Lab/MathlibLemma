import Mathlib

open Matrix

variable {n : Type _} {α : Type _}

lemma diagonal_reindex_embedding [Zero α] [DecidableEq n]
    (d : n → α) (e : n ↪ n) :
    (Matrix.diagonal d).submatrix e e = Matrix.diagonal (d ∘ e) := by
  sorry