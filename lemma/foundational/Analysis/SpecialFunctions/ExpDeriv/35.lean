import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Complex.deriv_exp_add (a : ℂ) :
    deriv (fun z => Complex.exp (z + a)) = fun z => Complex.exp (z + a) := by
  -- Use the chain rule for differentiation
  funext z
  -- Simplify the expression using the chain rule
  simp [Complex.deriv_exp, Complex.exp_add, mul_comm]
  -- The derivative of the exponential function is itself
  <;> rfl