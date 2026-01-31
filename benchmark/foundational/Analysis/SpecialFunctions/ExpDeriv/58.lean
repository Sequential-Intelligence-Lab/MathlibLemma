import Mathlib

theorem Complex.exp_real_im (x y : ℝ) :
    Complex.exp (x + Complex.I * y) =
      Real.exp x * (Real.cos y + Complex.I * Real.sin y) := by
  sorry
