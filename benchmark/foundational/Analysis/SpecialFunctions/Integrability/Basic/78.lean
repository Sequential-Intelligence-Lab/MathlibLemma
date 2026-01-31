import Mathlib

open MeasureTheory

lemma intervalIntegrable_cpow_im
    {μ : MeasureTheory.Measure ℝ} [MeasureTheory.IsLocallyFiniteMeasure μ]
    {a b : ℝ} {r : ℂ}
    (h : 0 ≤ r.re ∨ (0 : ℝ) ∉ Set.Icc a b) :
    IntervalIntegrable (fun x : ℝ => ((x : ℂ) ^ r).im) μ a b := by
  sorry