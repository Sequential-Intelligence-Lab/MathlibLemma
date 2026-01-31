import Mathlib

lemma diagonal_congr [Zero α] [DecidableEq n] {d₁ d₂ : n → α}
    (h : ∀ i, d₁ i = d₂ i) : Matrix.diagonal d₁ = Matrix.diagonal d₂ := by
  sorry