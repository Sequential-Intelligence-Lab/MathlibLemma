import Mathlib

theorem Complex.exp_integral_deriv {γ : ℝ → ℂ}
    (hγ : Differentiable ℝ γ)
    (a b : ℝ) :
    Complex.exp (γ b) = Complex.exp (γ a) *
      Complex.exp (∫ t in a..b, deriv γ t) := by
  sorry
