import Mathlib

theorem Complex.deriv_exp_mul (c : ℂ) :
    deriv (fun z => Complex.exp (c * z)) = fun z => c * Complex.exp (c * z) := by
  sorry
