import Mathlib

lemma integral_exp_neg_mul_sq (a b c : ℝ) :
    IntervalIntegrable (fun x : ℝ => Real.exp (-c * x^2)) volume a b := by
  sorry
