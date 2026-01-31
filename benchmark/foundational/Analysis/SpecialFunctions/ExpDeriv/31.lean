import Mathlib

theorem Complex.hasDerivAt_exp_mul (x : ℂ) (c : ℂ) :
    HasDerivAt (fun z => Complex.exp (c * z)) (c * Complex.exp (c * x)) x := by
  sorry
