import Mathlib

open Matrix

lemma diagonal_comp_congr
  [Zero α] [DecidableEq n]
  {d : n → α} {e₁ e₂ : m → n}
  (he : ∀ i, e₁ i = e₂ i) :
  (Matrix.diagonal d).submatrix e₁ e₁ = (Matrix.diagonal d).submatrix e₂ e₂ := by
  sorry