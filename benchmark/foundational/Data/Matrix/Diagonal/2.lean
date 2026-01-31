import Mathlib

lemma diagonal_inj_iff [Zero α] [DecidableEq n] {d₁ d₂ : n → α} :
    Matrix.diagonal d₁ = Matrix.diagonal d₂ ↔ ∀ i, d₁ i = d₂ i := by
  sorry