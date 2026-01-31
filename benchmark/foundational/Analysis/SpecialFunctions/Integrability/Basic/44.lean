import Mathlib

open Real MeasureTheory Interval

lemma intervalIntegrable_tan_of_no_odd_pi
    {μ : Measure ℝ} [IsLocallyFiniteMeasure μ]
    {a b : ℝ}
    (h : ∀ k : ℤ, (Real.pi / 2 + k * Real.pi) ∉ [[a, b]]) :
    IntervalIntegrable Real.tan μ a b := by
  sorry