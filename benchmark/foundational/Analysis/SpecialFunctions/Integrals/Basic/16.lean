import Mathlib

lemma integral_const_mul_log (a b c : ℝ) :
    ∫ x in a..b, c * Real.log x = c * (b * Real.log b - a * Real.log a - (b - a)) := by
  sorry
