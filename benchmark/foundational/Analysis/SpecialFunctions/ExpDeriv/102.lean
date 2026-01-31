import Mathlib

open MeasureTheory

theorem Real.exp_integrable_on_compact {a b : ℝ} :
    IntervalIntegrable Real.exp (volume : Measure ℝ) a b := by
  sorry