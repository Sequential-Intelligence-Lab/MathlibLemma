import Mathlib

open Matrix

lemma diagonal_congr'
    {α} {n : Type _} [Zero α] [DecidableEq n]
    (d₁ d₂ : n → α)
    (h : d₁ = d₂) :
    Matrix.diagonal d₁ = (Matrix.diagonal d₂ : Matrix n n α) := by
  sorry