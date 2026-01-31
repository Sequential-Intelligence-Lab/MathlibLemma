import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Complex.differentiableWithinAt_exp {s : Set ℂ} {z : ℂ} :
    DifferentiableWithinAt ℂ Complex.exp s z := by
  have h : DifferentiableAt ℂ Complex.exp z := Complex.differentiableAt_exp
  exact h.differentiableWithinAt
  <;> simp_all