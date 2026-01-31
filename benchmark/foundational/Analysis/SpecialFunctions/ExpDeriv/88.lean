import Mathlib

theorem Real.hasDerivAt_exp_add (x a : ℝ) :
    HasDerivAt (fun t => Real.exp (t + a)) (Real.exp (x + a)) x := by
  sorry
