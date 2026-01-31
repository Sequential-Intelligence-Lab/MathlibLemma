import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_natCast_antitone_of_lt_one {x : ℝ} (hx0 : 0 < x) (hx1 : x < 1) :
    Antitone fun n : ℕ => x ^ (n : ℝ) := by
  intro n m hnm
  have h_log_neg : Real.log x < 0 := by
    have h₁ : Real.log x < Real.log 1 := Real.log_lt_log hx0 hx1
    have h₂ : Real.log 1 = (0 : ℝ) := by norm_num
    linarith
  
  have h_cast_le : (n : ℝ) ≤ (m : ℝ) := by
    exact_mod_cast hnm
  
  have h_mul_ineq : Real.log x * (n : ℝ) ≥ Real.log x * (m : ℝ) := by
    have h₁ : Real.log x < 0 := h_log_neg
    have h₂ : (n : ℝ) ≤ (m : ℝ) := h_cast_le
    nlinarith
  
  have h_exp_ineq : Real.exp (Real.log x * (n : ℝ)) ≥ Real.exp (Real.log x * (m : ℝ)) := by
    apply Real.exp_le_exp.mpr
    exact h_mul_ineq
  
  have h_rpow_n : x ^ (n : ℝ) = Real.exp (Real.log x * (n : ℝ)) := by
    rw [Real.rpow_def_of_pos hx0]
    <;> simp [Real.exp_log hx0]
    <;> ring_nf
    <;> field_simp [Real.exp_log hx0]
    <;> ring_nf
    <;> norm_cast
    <;> simp_all [Real.exp_log]
    <;> linarith
  
  have h_rpow_m : x ^ (m : ℝ) = Real.exp (Real.log x * (m : ℝ)) := by
    rw [Real.rpow_def_of_pos hx0]
    <;> simp [Real.exp_log hx0]
    <;> ring_nf
    <;> field_simp [Real.exp_log hx0]
    <;> ring_nf
    <;> norm_cast
    <;> simp_all [Real.exp_log]
    <;> linarith
  
  have h_final : x ^ (n : ℝ) ≥ x ^ (m : ℝ) := by
    calc
      x ^ (n : ℝ) = Real.exp (Real.log x * (n : ℝ)) := by rw [h_rpow_n]
      _ ≥ Real.exp (Real.log x * (m : ℝ)) := h_exp_ineq
      _ = x ^ (m : ℝ) := by rw [h_rpow_m]
  
  exact h_final