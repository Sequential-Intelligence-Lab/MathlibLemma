import Mathlib

lemma integral_log_abs_of_neg {a b : ℝ} (ha : a < 0) (hb : b < 0) :
    ∫ x in a..b, Real.log (-x) =
      (-b) * Real.log (-b) - (-a) * Real.log (-a) - (b - a) := by
  sorry
