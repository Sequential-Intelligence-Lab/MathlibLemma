import Mathlib

open Real

lemma intervalIntegrable_exp_neg_abs (a b : ℝ) :
    IntervalIntegrable (fun x : ℝ => Real.exp (-|x|)) volume a b := by
  sorry