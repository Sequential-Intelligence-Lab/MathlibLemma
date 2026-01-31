import Mathlib

lemma integral_pow_mul_exp (a b : ℝ) (n : ℕ) :
    IntervalIntegrable (fun x : ℝ => x^n * Real.exp x) volume a b := by
  sorry
