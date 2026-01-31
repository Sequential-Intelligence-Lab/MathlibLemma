import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_lt_rpow_of_gt_one {x y z : ℝ}
    (hx : 1 < x) (hxy : y < z) :
    x ^ y < x ^ z := by
  have h_log_pos : Real.log x > 0 := by
    apply Real.log_pos
    linarith
  
  have h_mul_ineq : y * Real.log x < z * Real.log x := by
    have h : y < z := hxy
    have h₁ : 0 < Real.log x := h_log_pos
    -- Multiply both sides of the inequality y < z by the positive number Real.log x
    have h₂ : y * Real.log x < z * Real.log x := by
      nlinarith
    exact h₂
  
  have h_exp_ineq : Real.exp (y * Real.log x) < Real.exp (z * Real.log x) := by
    apply Real.exp_lt_exp.mpr
    exact h_mul_ineq
  
  have h_main : x ^ y < x ^ z := by
    have h₁ : x > 0 := by linarith
    have h₂ : x ^ y = Real.exp (y * Real.log x) := by
      rw [Real.rpow_def_of_pos h₁]
      <;> ring_nf
    have h₃ : x ^ z = Real.exp (z * Real.log x) := by
      rw [Real.rpow_def_of_pos h₁]
      <;> ring_nf
    rw [h₂, h₃]
    exact h_exp_ineq
  
  exact h_main