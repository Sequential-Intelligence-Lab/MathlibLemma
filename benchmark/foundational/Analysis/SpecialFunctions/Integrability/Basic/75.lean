import Mathlib

open MeasureTheory

lemma intervalIntegrable_inv_one_add_sq_shift
    (μ : Measure ℝ) [IsLocallyFiniteMeasure μ]
    (a b c : ℝ) :
    IntervalIntegrable (fun x : ℝ => (1 + (x - c)^2)⁻¹) μ a b := by
  sorry