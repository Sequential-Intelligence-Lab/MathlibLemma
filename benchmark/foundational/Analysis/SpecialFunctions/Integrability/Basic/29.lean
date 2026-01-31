import Mathlib

open MeasureTheory

lemma intervalIntegrable_exp_add_const
    {a b c : ℝ} :
    IntervalIntegrable (fun x : ℝ => Real.exp (x + c)) (MeasureTheory.volume) a b := by
  sorry