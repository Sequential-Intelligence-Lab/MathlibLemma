import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.log_abs_pos {x : ℝ} (hx : |x| > 1) :
    0 < Real.log |x| := by
  have h₁ : Real.log 1 = (0 : ℝ) := by
    norm_num [Real.log_one]
    <;>
    simp_all
  
  have h₂ : Real.log |x| > Real.log 1 := by
    have h₃ : (1 : ℝ) < |x| := by linarith
    have h₄ : 0 < (1 : ℝ) := by norm_num
    have h₅ : 0 < |x| := by
      -- Prove that the absolute value of x is positive
      have h₅₁ : 0 ≤ |x| := abs_nonneg x
      have h₅₂ : |x| > 1 := hx
      linarith
    -- Use the property of the logarithm function being strictly increasing
    have h₆ : Real.log 1 < Real.log |x| := Real.log_lt_log (by positivity) h₃
    linarith
  
  have h₃ : 0 < Real.log |x| := by
    have h₄ : Real.log |x| > Real.log 1 := h₂
    have h₅ : Real.log 1 = (0 : ℝ) := h₁
    linarith
  
  exact h₃