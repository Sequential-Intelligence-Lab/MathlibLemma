import Mathlib

theorem Complex.hasDerivAt_exp_add (x a : ℂ) :
    HasDerivAt (fun z => Complex.exp (z + a)) (Complex.exp (x + a)) x := by
  sorry
