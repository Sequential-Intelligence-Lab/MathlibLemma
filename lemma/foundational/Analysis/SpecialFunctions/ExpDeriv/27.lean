import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


theorem Complex.differentiableOn_exp_univ : DifferentiableOn ℂ Complex.exp univ := by
  intro z h
  apply Complex.differentiableAt_exp.differentiableWithinAt
  all_goals
    simp at h ⊢