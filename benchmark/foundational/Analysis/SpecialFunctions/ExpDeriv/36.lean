import Mathlib

theorem Complex.hasDerivAt_exp_sub (x a : ℂ) :
    HasDerivAt (fun z => Complex.exp (z - a)) (Complex.exp (x - a)) x := by
  sorry
