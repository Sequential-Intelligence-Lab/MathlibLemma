import Mathlib

theorem Real.hasDerivAt_exp_mul (x c : ℝ) :
    HasDerivAt (fun t => Real.exp (c * t)) (c * Real.exp (c * x)) x := by
  sorry
