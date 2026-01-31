import Mathlib

open MeasureTheory

lemma intervalIntegrable_log_abs_div_id
    (μ : Measure ℝ)
    [IsLocallyFiniteMeasure μ]
    {a b : ℝ}
    (h : 0 ∉ Set.uIcc a b) :
    IntervalIntegrable (fun x => Real.log |x| / x) μ a b := by
  sorry