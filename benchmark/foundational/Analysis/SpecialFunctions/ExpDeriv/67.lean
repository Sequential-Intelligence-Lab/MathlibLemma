import Mathlib

theorem Complex.hasDerivAt_exp_log {z : ℂ} (hz : z ≠ 0) :
    HasDerivAt (fun w => Complex.exp (Complex.log w)) (1 : ℂ) z := by
  sorry
