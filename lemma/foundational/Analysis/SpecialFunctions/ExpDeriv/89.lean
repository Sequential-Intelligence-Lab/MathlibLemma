import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Real.deriv_exp_add (a : ℝ) :
    deriv (fun t => Real.exp (t + a)) = fun t => Real.exp (t + a) := by
  -- Use the fact that the derivative of `exp` is `exp` and apply the chain rule.
  simp [exp_add]
  -- Simplify the expression using the fact that the derivative of `exp` is `exp` and the chain rule.
  <;> simp [exp_add]
  -- Apply the chain rule and simplify the expression.
  <;> simp [exp_add]
  -- Apply the chain rule and simplify the expression.
  <;> simp [exp_add]
  -- Apply the chain rule and simplify the expression.
  <;> simp [exp_add]