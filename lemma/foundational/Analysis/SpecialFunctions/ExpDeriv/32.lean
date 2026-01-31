import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Complex.deriv_exp_mul (c : ℂ) :
    deriv (fun z => Complex.exp (c * z)) = fun z => c * Complex.exp (c * z) := by
  ext z
  -- Use the definition of the derivative in complex analysis
  simp [Complex.deriv_exp, mul_comm c]
  -- Apply the chain rule and simplify
  <;> simp [Complex.exp_add, mul_add, mul_comm, mul_left_comm]
  <;> ring
  <;> simp [Complex.exp_add, mul_add, mul_comm, mul_left_comm]
  <;> ring