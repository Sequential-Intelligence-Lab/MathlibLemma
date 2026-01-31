import Mathlib

theorem Real.deriv_const_mul_exp (c : ℝ) :
    deriv (fun t => c * Real.exp t) = fun t => c * Real.exp t := by
  funext t
  -- Use the known derivative of exp and the constant multiplication rule
  have h_exp : HasDerivAt Real.exp (Real.exp t) t :=
    Real.hasDerivAt_exp t
  -- Multiply the function by the constant c on the left
  have h : HasDerivAt (fun x => c * Real.exp x) (c * Real.exp t) t :=
    h_exp.const_mul c
  -- Extract the value of the derivative at t
  simpa using h.deriv