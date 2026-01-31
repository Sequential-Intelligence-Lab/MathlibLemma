import Mathlib

open MeasureTheory

lemma intervalIntegrable_sin_sq (a b : ℝ) :
    IntervalIntegrable (fun x => Real.sin x ^ 2) (volume : Measure ℝ) a b := by
  sorry