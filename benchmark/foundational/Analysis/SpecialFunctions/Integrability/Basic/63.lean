import Mathlib

open MeasureTheory

lemma intervalIntegrable_const_add
    {μ : MeasureTheory.Measure ℝ} [MeasureTheory.IsLocallyFiniteMeasure μ]
    {a b c : ℝ} {f : ℝ → ℝ}
    (hf : IntervalIntegrable f μ a b) :
    IntervalIntegrable (fun x => f x + c) μ a b := by
  sorry