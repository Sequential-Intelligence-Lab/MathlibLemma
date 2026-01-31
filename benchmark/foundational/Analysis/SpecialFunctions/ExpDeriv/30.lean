import Mathlib

theorem Complex.exp_hasFDerivAt_real (x : ℂ) :
    HasFDerivAt Complex.exp (Complex.exp x • (1 : ℂ →L[ℝ] ℂ)) x := by
  sorry
