import Mathlib

open MeasureTheory

lemma intervalIntegrable_exp_mul_sin
    {a b : ℝ} :
    IntervalIntegrable (fun x => Real.exp x * Real.sin x) (MeasureTheory.volume : Measure ℝ) a b := by
  sorry