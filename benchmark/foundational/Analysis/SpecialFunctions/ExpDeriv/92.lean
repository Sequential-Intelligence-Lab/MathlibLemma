import Mathlib

theorem Real.hasDerivAt_exp_neg (x : ℝ) :
    HasDerivAt (fun t => Real.exp (-t)) (-Real.exp (-x)) x := by
  sorry
