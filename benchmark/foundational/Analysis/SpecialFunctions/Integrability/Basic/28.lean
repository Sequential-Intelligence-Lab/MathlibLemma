import Mathlib

open MeasureTheory

lemma intervalIntegrable_const_mul_exp
    (μ : Measure ℝ) {a b c : ℝ} :
    IntervalIntegrable (fun x : ℝ => c * Real.exp x) μ a b := by
  sorry