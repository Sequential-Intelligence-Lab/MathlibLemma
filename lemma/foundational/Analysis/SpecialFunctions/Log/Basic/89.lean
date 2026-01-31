import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.log_nonnegative_on_ge_one :
    ∀ x ∈ Set.Ici (1 : ℝ), 0 ≤ Real.log x := by
  intro x hx
  have hx' : x ≥ 1 := by
    exact hx
    <;>
    simp_all [Set.mem_Ici]
    <;>
    linarith
  
  have h_pos_x : 0 < x := by
    linarith
  
  have h_log_ineq : Real.log 1 ≤ Real.log x := by
    have h₁ : (1 : ℝ) > 0 := by norm_num
    have h₂ : x > 0 := by linarith
    have h₃ : (1 : ℝ) ≤ x := hx'
    -- Use the property of the logarithm function that if a ≤ b, then log(a) ≤ log(b)
    -- for a, b > 0.
    exact Real.log_le_log (by positivity) h₃
  
  have h_log_one : Real.log 1 = 0 := by
    norm_num [Real.log_one]
    <;>
    simp_all
    <;>
    linarith
  
  have h_final : 0 ≤ Real.log x := by
    have h₁ : Real.log 1 ≤ Real.log x := h_log_ineq
    have h₂ : Real.log 1 = 0 := h_log_one
    linarith
  
  exact h_final