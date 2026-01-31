import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Complex.deriv_const_mul_exp (c : ℂ) :
    deriv (fun z => c * Complex.exp z) = fun z => c * Complex.exp z := by
  ext z
  -- Apply the constant multiple rule and the known derivative of the exponential function.
  simp [Complex.deriv_exp, mul_comm, mul_assoc, mul_left_comm]
  -- Simplify the expression to confirm the derivative.
  <;> ring