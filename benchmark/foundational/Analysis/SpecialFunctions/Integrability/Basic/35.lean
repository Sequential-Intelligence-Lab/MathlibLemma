import Mathlib

open MeasureTheory

lemma intervalIntegrable_log_abs_one_add
    (μ : Measure ℝ) [IsLocallyFiniteMeasure μ]
    {a b : ℝ} (h : (-1 : ℝ) ∉ Set.Icc a b) :
    IntervalIntegrable (fun x => Real.log |1 + x|) μ a b := by
  sorry