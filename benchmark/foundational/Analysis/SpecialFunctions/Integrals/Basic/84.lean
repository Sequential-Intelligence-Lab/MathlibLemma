import Mathlib

lemma integral_log_one_plus (a b : ℝ) (h : ∀ x ∈ Set.Icc a b, -1 < x) :
    ∫ x in a..b, Real.log (1 + x) =
      (1 + b) * Real.log (1 + b) - (1 + a) * Real.log (1 + a) - (b - a) := by
  sorry
