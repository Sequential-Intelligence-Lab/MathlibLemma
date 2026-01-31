import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Real.deriv_exp_mul (c : ℝ) :
    deriv (fun t => Real.exp (c * t)) = fun t => c * Real.exp (c * t) := by
  ext t
  -- Use the chain rule to differentiate the exponential function with a linear argument.
  simp [Real.deriv_exp, mul_comm c]
  -- Simplify the expression to show that the derivative is c * Real.exp (c * t).
  <;> ring
  <;> aesop