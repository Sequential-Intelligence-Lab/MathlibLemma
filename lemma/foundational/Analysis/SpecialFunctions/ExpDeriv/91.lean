import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Real.deriv_exp_sub (a : ℝ) :
    deriv (fun t => Real.exp (t - a)) = fun t => Real.exp (t - a) := by
  -- Use the chain rule for differentiation, where the derivative of e^(t - a) is e^(t - a) * derivative of (t - a)
  funext t
  -- Simplify the expression using the fact that the derivative of (t - a) is 1
  simp [Real.exp_sub, deriv_exp]
  -- Apply the chain rule and simplify
  <;> simp_all [Real.exp_sub, deriv_exp]
  -- The result is e^(t - a)
  <;> ring