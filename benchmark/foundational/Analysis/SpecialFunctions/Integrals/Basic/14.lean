import Mathlib

lemma integral_log_abs_of_pos {a b : ℝ} (ha : 0 < a) (hb : 0 < b) :
    ∫ x in a..b, Real.log x = b * Real.log b - a * Real.log a - (b - a) := by
  sorry
