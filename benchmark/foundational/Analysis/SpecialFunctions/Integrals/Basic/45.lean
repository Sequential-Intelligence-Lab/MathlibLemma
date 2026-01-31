import Mathlib

lemma integral_id_pow (a b : ℝ) (n : ℕ) :
    ∫ x in a..b, x^n =
      (b^(n + 1) - a^(n + 1)) / (n + 1) := by
  sorry
