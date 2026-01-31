import Mathlib

open MeasureTheory

lemma intervalIntegrable_abs
    {μ : Measure ℝ} [IsLocallyFiniteMeasure μ]
    {a b : ℝ} {f : ℝ → ℝ}
    (hf : IntervalIntegrable f μ a b) :
    IntervalIntegrable (fun x => |f x|) μ a b := by
  sorry