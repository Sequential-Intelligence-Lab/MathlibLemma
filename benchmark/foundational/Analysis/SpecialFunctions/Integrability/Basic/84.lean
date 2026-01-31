import Mathlib

open MeasureTheory

lemma intervalIntegrable_real_part
    (μ : Measure ℝ)
    (hμ : IsLocallyFiniteMeasure μ)
    (a b : ℝ) (f : ℝ → ℂ)
    (hf : IntervalIntegrable f μ a b) :
    IntervalIntegrable (fun x => (f x).re) μ a b := by
  sorry