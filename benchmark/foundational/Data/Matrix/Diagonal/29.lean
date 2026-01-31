import Mathlib

open Matrix Complex

variable (n : Type) [DecidableEq n]

lemma diagonal_isHermitian_iff_im_eq_zero (d : n → ℂ) :
    Matrix.IsHermitian (Matrix.diagonal d) ↔ ∀ i, (d i).im = 0 := by
  sorry