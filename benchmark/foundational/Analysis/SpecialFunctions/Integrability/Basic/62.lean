import Mathlib

open MeasureTheory

lemma intervalIntegrable_indicator
    {μ : MeasureTheory.Measure ℝ} [MeasureTheory.IsLocallyFiniteMeasure μ]
    {a b : ℝ} (s : Set ℝ) {f : ℝ → ℝ}
    (hf : IntervalIntegrable f μ a b) :
    IntervalIntegrable (s.indicator f) μ a b := by
  sorry