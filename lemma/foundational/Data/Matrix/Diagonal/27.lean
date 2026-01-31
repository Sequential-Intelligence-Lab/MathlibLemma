import Mathlib

open Matrix

lemma diagonal_mul_diagonal
  [Semiring α] [Fintype n] [DecidableEq n]
  (d₁ d₂ : n → α) :
  (diagonal d₁ : Matrix n n α) * diagonal d₂ =
    diagonal (fun i => d₁ i * d₂ i) := by
  simpa using Matrix.diagonal_mul_diagonal d₁ d₂