import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_log (x : ℝ) (hx : 0 < x) : (Real.exp 1) ^ Real.log x = x := by
  have h₁ : (Real.exp 1 : ℝ) > 0 := by
    exact Real.exp_pos 1
  
  have h₂ : Real.log (Real.exp 1 : ℝ) = 1 := by
    rw [Real.log_exp]
    <;> norm_num
  
  have h₃ : (Real.exp 1 : ℝ) ^ Real.log x = Real.exp (Real.log x * Real.log (Real.exp 1)) := by
    rw [Real.rpow_def_of_pos h₁]
    <;> simp [Real.exp_log]
    <;> ring_nf
    <;> field_simp [Real.log_mul, Real.log_rpow, Real.log_exp]
    <;> ring_nf
  
  have h₄ : (Real.exp 1 : ℝ) ^ Real.log x = Real.exp (Real.log x) := by
    rw [h₃]
    rw [h₂]
    <;> ring_nf
    <;> simp [Real.exp_log]
    <;> field_simp [Real.log_mul, Real.log_rpow, Real.log_exp]
    <;> ring_nf
  
  have h₅ : Real.exp (Real.log x) = x := by
    rw [Real.exp_log hx]
  
  have h₆ : (Real.exp 1 : ℝ) ^ Real.log x = x := by
    rw [h₄]
    rw [h₅]
  
  exact h₆