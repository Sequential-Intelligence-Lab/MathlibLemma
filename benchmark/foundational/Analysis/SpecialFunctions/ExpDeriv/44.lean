import Mathlib

theorem Complex.hasDerivAt_exp_im (x : ℝ) :
    HasDerivAt (fun t : ℝ => Complex.exp (Complex.I * t)) (Complex.I * Complex.exp (Complex.I * x)) x := by
  sorry
