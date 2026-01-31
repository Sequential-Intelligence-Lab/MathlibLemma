import Mathlib

open MeasureTheory

lemma intervalIntegrable_exp_neg_mul_sq {a b c : ℝ} (hc : 0 < c) :
    IntervalIntegrable (fun x : ℝ => Real.exp (-c * x^2))
      (volume : MeasureTheory.Measure ℝ) a b := by
  sorry