import Mathlib

theorem Complex.deriv_exp_comp_real :
    deriv (fun t : ℝ => Complex.exp (t : ℂ)) =
      fun t : ℝ => Complex.exp (t : ℂ) := by
  sorry