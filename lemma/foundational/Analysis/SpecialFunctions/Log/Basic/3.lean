import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.log_natCast_lt_log_natCast {m n : ℕ} (hm : 0 < m) (h : m < n) :
    Real.log (m : ℝ) < Real.log (n : ℝ) := by
  have h₁ : (m : ℝ) < (n : ℝ) := by
    norm_cast
    <;> linarith
  
  have h₂ : 0 < (m : ℝ) := by
    norm_cast
    <;> linarith
  
  have h₃ : Real.log (m : ℝ) < Real.log (n : ℝ) := by
    have h₄ : 0 < (n : ℝ) := by
      have h₅ : (m : ℝ) < (n : ℝ) := h₁
      have h₆ : 0 < (m : ℝ) := h₂
      linarith
    -- Use the property of the logarithm function being strictly increasing
    have h₅ : Real.log (m : ℝ) < Real.log (n : ℝ) := Real.log_lt_log h₂ h₁
    exact h₅
  
  exact h₃