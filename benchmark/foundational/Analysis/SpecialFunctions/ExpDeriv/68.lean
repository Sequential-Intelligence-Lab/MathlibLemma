import Mathlib

theorem Complex.hasDerivAt_exp_pow (x : ℂ) (n : ℕ) :
    HasDerivAt (fun z => Complex.exp (z ^ n)) (n * x ^ (n - 1) * Complex.exp (x ^ n)) x := by
  sorry
