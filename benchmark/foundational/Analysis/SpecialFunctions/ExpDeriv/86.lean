import Mathlib

theorem Real.deriv_exp_mul (c : ℝ) :
    deriv (fun t => Real.exp (c * t)) = fun t => c * Real.exp (c * t) := by
  sorry
