import Mathlib

open MeasureTheory

lemma intervalIntegrable_imag_part {μ : MeasureTheory.Measure ℝ} [IsLocallyFiniteMeasure μ]
    {a b : ℝ} {f : ℝ → ℂ}
    (hf : IntervalIntegrable f μ a b) :
    IntervalIntegrable (fun x => (f x).im) μ a b := by
  sorry