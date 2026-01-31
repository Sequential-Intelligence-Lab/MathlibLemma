import Mathlib

lemma integral_inv_one_add_sq_shift (a b c : ℝ) :
    ∫ x in a..b, 1 / (1 + (x - c)^2) = Real.arctan (b - c) - Real.arctan (a - c) := by
  sorry
