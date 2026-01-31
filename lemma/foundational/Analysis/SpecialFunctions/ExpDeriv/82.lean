import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Real.differentiableOn_exp_univ : DifferentiableOn ℝ Real.exp univ := by
  have h_main : Differentiable ℝ Real.exp := by
    apply differentiable_exp
  
  have h_final : DifferentiableOn ℝ Real.exp univ := by
    apply h_main.differentiableOn
    <;> simp [Set.mem_univ]
  
  exact h_final