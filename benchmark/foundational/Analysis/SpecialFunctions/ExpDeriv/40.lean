import Mathlib

theorem Complex.hasDerivAt_exp_comp_real (x : ℝ) :
    HasDerivAt (fun t : ℝ => Complex.exp (t : ℂ)) (Complex.exp x) x := by
  sorry
