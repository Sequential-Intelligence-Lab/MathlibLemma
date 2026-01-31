import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Real.deriv_exp_neg :
    deriv (fun t => Real.exp (-t)) = fun t => -Real.exp (-t) := by
  have h_main : deriv (fun t : ℝ => Real.exp (-t)) = fun t : ℝ => -Real.exp (-t) := by
    funext t
    -- Use the chain rule to find the derivative of exp(-t)
    rw [show (fun t : ℝ => Real.exp (-t)) = (fun t : ℝ => Real.exp (-t)) by rfl]
    -- Apply the chain rule: the derivative of exp(-t) is exp(-t) * (-1)
    simp [Real.exp_neg, mul_comm]
    <;>
    field_simp [Real.differentiableAt_exp]
    <;>
    ring_nf
    <;>
    norm_num
    <;>
    apply DifferentiableAt.exp
    <;>
    apply DifferentiableAt.neg
    <;>
    apply DifferentiableAt.id
  -- The final result follows from the main calculation
  exact h_main