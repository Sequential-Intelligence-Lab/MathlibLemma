import Mathlib

open MeasureTheory

lemma intervalIntegrable_one_div_one_add_sq_shift
    (μ : MeasureTheory.Measure ℝ) (a b c : ℝ) :
    IntervalIntegrable (fun x : ℝ => 1 / (1 + (x - c)^2)) μ a b := by
  sorry