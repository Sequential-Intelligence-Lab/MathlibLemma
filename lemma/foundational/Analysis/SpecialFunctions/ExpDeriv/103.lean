import Mathlib

theorem Real.integral_exp (a b : ℝ) :
    ∫ x in a..b, Real.exp x = Real.exp b - Real.exp a := by
  -- Use the fundamental theorem of calculus for interval integrals,
  -- specialized to `Real.exp`, and then rewrite the derivative.
  simpa [Real.deriv_exp] using
    intervalIntegral.integral_deriv_eq_sub (f := Real.exp) (a := a) (b := b)