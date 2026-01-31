import Mathlib

open Real

lemma integral_log_abs (a b : ℝ) (h : (0 : ℝ) ∉ Set.Icc a b) :
    ∫ x in a..b, Real.log (|x|) = b * Real.log (|b|) - a * Real.log (|a|) - (b - a) := by
  sorry