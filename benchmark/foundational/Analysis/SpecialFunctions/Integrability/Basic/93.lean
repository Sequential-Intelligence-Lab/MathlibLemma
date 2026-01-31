import Mathlib

open MeasureTheory

lemma intervalIntegrable_log_abs_one_plus_sq
    {μ : Measure ℝ} [IsLocallyFiniteMeasure μ] {a b : ℝ} :
    IntervalIntegrable (fun x : ℝ => Real.log |1 + x^2|) μ a b := by
  sorry

lemma intervalIntegrable_log_abs_one_plus_sq_volume (a b : ℝ) :
    IntervalIntegrable (fun x : ℝ => Real.log |1 + x^2|) (volume : Measure ℝ) a b := by
  sorry