import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.log_abs_neg_iff (x : ℝ) (hx : x ≠ 0) :
    Real.log |x| < 0 ↔ |x| < 1 := by
  have h_abs_pos : 0 < |x| := by
    exact abs_pos.mpr (by intro h; apply hx; simp_all [abs_eq_zero])
  
  have h_log_one : Real.log 1 = 0 := by
    norm_num [Real.log_one]
  
  have h_imp_forward : Real.log |x| < 0 → |x| < 1 := by
    intro h
    have h₁ : Real.log |x| < Real.log 1 := by
      rw [h_log_one] at *
      linarith
    have h₂ : |x| < 1 := by
      by_contra h₂
      -- If |x| ≥ 1, then log |x| ≥ log 1 = 0, contradicting h₁
      have h₃ : |x| ≥ 1 := by linarith
      have h₄ : Real.log |x| ≥ Real.log 1 := Real.log_le_log (by positivity) h₃
      have h₅ : Real.log 1 = (0 : ℝ) := by norm_num [Real.log_one]
      linarith
    exact h₂
  
  have h_imp_backward : |x| < 1 → Real.log |x| < 0 := by
    intro h
    have h₁ : Real.log |x| < Real.log 1 := Real.log_lt_log (by positivity) h
    have h₂ : Real.log 1 = (0 : ℝ) := by norm_num [Real.log_one]
    linarith
  
  have h_main : Real.log |x| < 0 ↔ |x| < 1 := by
    constructor
    · -- Prove the forward direction: if Real.log |x| < 0, then |x| < 1
      intro h
      exact h_imp_forward h
    · -- Prove the backward direction: if |x| < 1, then Real.log |x| < 0
      intro h
      exact h_imp_backward h
  
  exact h_main