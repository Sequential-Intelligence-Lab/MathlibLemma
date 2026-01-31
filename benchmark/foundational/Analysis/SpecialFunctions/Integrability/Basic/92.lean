import Mathlib

open MeasureTheory

lemma intervalIntegrable_log_one_plus_sq (a b : ℝ) :
    IntervalIntegrable (fun x : ℝ => Real.log (1 + x^2)) volume a b := by
  sorry