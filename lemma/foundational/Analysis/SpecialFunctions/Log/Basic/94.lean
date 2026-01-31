import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.log_pos_of_gt_one {x : ℝ} (hx : x > 1) :
    Real.log x > 0 := by
  have hx_pos : x > 0 := by
    linarith
  
  have h_log_pos : Real.log x > Real.log 1 := by
    apply Real.log_lt_log (by linarith)
    <;> linarith
  
  have h_log_one : Real.log 1 = (0 : ℝ) := by
    norm_num [Real.log_one]
    <;>
    simp_all [Real.log_one]
    <;>
    norm_num
  
  have h_final : Real.log x > 0 := by
    have h₁ : Real.log x > Real.log 1 := h_log_pos
    have h₂ : Real.log 1 = (0 : ℝ) := h_log_one
    linarith
  
  exact h_final