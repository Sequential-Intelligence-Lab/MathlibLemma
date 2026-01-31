import Mathlib

lemma integral_pow_comp (a b : ℝ) (n : ℕ) :
    ∫ x in a..b, (x^n)^2 = (b^(2*n + 1) - a^(2*n + 1)) / (2*n + 1) := by
  sorry
