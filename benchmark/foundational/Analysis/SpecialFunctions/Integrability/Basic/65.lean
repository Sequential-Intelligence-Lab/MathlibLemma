import Mathlib

open MeasureTheory

lemma intervalIntegrable_const_sub
    {μ : Measure ℝ} [MeasureTheory.IsLocallyFiniteMeasure μ]
    {a b c : ℝ} {f : ℝ → ℝ}
    (hf : IntervalIntegrable f μ a b) :
    IntervalIntegrable (fun x => c - f x) μ a b := by
  sorry