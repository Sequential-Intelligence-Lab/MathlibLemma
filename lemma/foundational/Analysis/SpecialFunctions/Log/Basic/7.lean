import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.log_intCast_lt_log_intCast {m n : ℤ} (hm : 0 < m) (h : m < n) :
    Real.log (m : ℝ) < Real.log (n : ℝ) := by
  have h₁ : (m : ℝ) < (n : ℝ) := by
    norm_cast
    <;> linarith
  
  have h₂ : 0 < (m : ℝ) := by
    exact_mod_cast hm
  
  have h₃ : 0 < (n : ℝ) := by
    have h₄ : 0 < n := by
      linarith
    exact_mod_cast h₄
  
  have h₄ : Real.log (m : ℝ) < Real.log (n : ℝ) := by
    apply Real.log_lt_log (by positivity)
    -- Use the fact that the coercion from integers to reals is strictly monotone
    exact_mod_cast h
  
  exact h₄