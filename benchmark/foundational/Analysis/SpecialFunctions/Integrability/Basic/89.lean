import Mathlib

open MeasureTheory

lemma intervalIntegrable_min {μ : Measure ℝ} [MeasureTheory.IsLocallyFiniteMeasure μ]
    {a b : ℝ} {f g : ℝ → ℝ}
    (hf : IntervalIntegrable f μ a b) (hg : IntervalIntegrable g μ a b) :
    IntervalIntegrable (fun x => min (f x) (g x)) μ a b := by
  sorry