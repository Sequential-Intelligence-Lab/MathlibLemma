import Mathlib

open Real MeasureTheory

lemma intervalIntegrable_sin_mul_cos :
    IntervalIntegrable (fun x => Real.sin x * Real.cos x) (MeasureTheory.volume : Measure ℝ) a b := by
  sorry