import Mathlib

open Complex

theorem Complex.deriv_exp_im :
    deriv (fun t : ℝ => Complex.exp (Complex.I * (t : ℂ))) =
      fun t : ℝ => Complex.I * Complex.exp (Complex.I * (t : ℂ)) := by
  sorry