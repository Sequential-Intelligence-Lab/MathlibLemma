import Mathlib

lemma integral_sin_sq_mul (a b c : ℝ) :
    ∫ x in a..b, Real.sin (c * x) ^ 2 =
      (b - a) / 2 - (Real.sin (2 * c * b) - Real.sin (2 * c * a)) / (4 * c) := by
  sorry
