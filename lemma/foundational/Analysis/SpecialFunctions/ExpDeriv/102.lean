import Mathlib

open MeasureTheory

theorem Real.exp_integrable_on_compact {a b : ℝ} :
    IntervalIntegrable Real.exp (volume : Measure ℝ) a b := by
  -- `Real.exp` is continuous, and a continuous function on ℝ
  -- is interval integrable with respect to `volume` on any `[a, b]`.
  simpa using Real.continuous_exp.intervalIntegrable (μ := (volume : Measure ℝ)) a b