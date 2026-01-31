import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.log_intCast_pos {z : ℤ} (hz : 1 < z) :
    0 < Real.log (z : ℝ) := by
  have hz_pos : (1 : ℝ) < (z : ℝ) := by
    norm_cast at hz ⊢
    <;> exact_mod_cast hz
  
  have h_log_pos : Real.log (1 : ℝ) < Real.log (z : ℝ) := by
    have h : (1 : ℝ) < (z : ℝ) := hz_pos
    have h₁ : 0 < (1 : ℝ) := by norm_num
    have h₂ : 0 < (z : ℝ) := by linarith
    -- Use the property that the logarithm function is strictly increasing on positive real numbers.
    exact Real.log_lt_log (by positivity) h
  
  have h_log_one : Real.log (1 : ℝ) = 0 := by
    norm_num [Real.log_one]
    <;>
    simp_all [Real.log_one]
    <;>
    norm_num
    <;>
    linarith
  
  have h_main : 0 < Real.log (z : ℝ) := by
    have h₁ : Real.log (1 : ℝ) < Real.log (z : ℝ) := h_log_pos
    have h₂ : Real.log (1 : ℝ) = 0 := h_log_one
    linarith
  
  exact h_main