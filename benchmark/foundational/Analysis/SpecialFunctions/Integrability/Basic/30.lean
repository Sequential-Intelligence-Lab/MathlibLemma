import Mathlib

open MeasureTheory

lemma intervalIntegrable_exp_sub_const
    {a b c : ℝ} :
    IntervalIntegrable (fun x : ℝ => Real.exp (x - c)) volume a b := by
  sorry