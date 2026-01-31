import Mathlib

theorem Complex.hasDerivAt_exp_neg (x : ℂ) :
    HasDerivAt (fun z => Complex.exp (-z)) (-Complex.exp (-x)) x := by
  sorry
