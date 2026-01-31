import Mathlib

open MeasureTheory

lemma intervalIntegrable_log_one_add_pow_two
    {μ : Measure ℝ} {a b : ℝ} :
    IntervalIntegrable (fun x : ℝ => Real.log (1 + x^2)) μ a b := by
  sorry