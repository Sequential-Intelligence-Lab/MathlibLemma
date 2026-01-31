import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_natCast_lt_rpow_natCast {x : ℝ} (hx : 1 < x) {m n : ℕ} (hmn : m < n) :
    x ^ (m : ℝ) < x ^ (n : ℝ) := by
  have hlog_pos : 0 < Real.log x := by
    -- Prove that the logarithm of x is positive since x > 1
    have h₁ : Real.log x > 0 := Real.log_pos hx
    linarith
  
  have hmn_real : (m : ℝ) < (n : ℝ) := by
    -- Coerce the natural numbers m and n to real numbers and use the given inequality m < n
    exact_mod_cast hmn
  
  have hmul_ineq : (m : ℝ) * Real.log x < (n : ℝ) * Real.log x := by
    -- Multiply both sides of the inequality (m : ℝ) < (n : ℝ) by the positive number Real.log x
    have h₁ : (m : ℝ) < (n : ℝ) := hmn_real
    have h₂ : 0 < Real.log x := hlog_pos
    -- Since Real.log x is positive, the direction of the inequality is preserved
    nlinarith
  
  have hexp_ineq : Real.exp ((m : ℝ) * Real.log x) < Real.exp ((n : ℝ) * Real.log x) := by
    -- Use the fact that the exponential function is strictly increasing to preserve the inequality
    apply Real.exp_lt_exp.mpr
    -- The inequality (m : ℝ) * Real.log x < (n : ℝ) * Real.log x is already established
    exact hmul_ineq
  
  have hleft : Real.exp ((m : ℝ) * Real.log x) = x ^ (m : ℝ) := by
    -- Use the property of exponents and logarithms to show that exp((m : ℝ) * log x) = x ^ (m : ℝ)
    have h₁ : x > 0 := by linarith
    rw [Real.rpow_def_of_pos h₁]
    <;> ring_nf
    <;> simp [Real.log_mul, Real.log_rpow, h₁]
    <;> field_simp [Real.log_mul, Real.log_rpow, h₁]
    <;> ring_nf
  
  have hright : Real.exp ((n : ℝ) * Real.log x) = x ^ (n : ℝ) := by
    -- Use the property of exponents and logarithms to show that exp((n : ℝ) * log x) = x ^ (n : ℝ)
    have h₁ : x > 0 := by linarith
    rw [Real.rpow_def_of_pos h₁]
    <;> ring_nf
    <;> simp [Real.log_mul, Real.log_rpow, h₁]
    <;> field_simp [Real.log_mul, Real.log_rpow, h₁]
    <;> ring_nf
  
  have hfinal : x ^ (m : ℝ) < x ^ (n : ℝ) := by
    -- Combine the previous results to conclude that x ^ (m : ℝ) < x ^ (n : ℝ)
    calc
      x ^ (m : ℝ) = Real.exp ((m : ℝ) * Real.log x) := by rw [hleft]
      _ < Real.exp ((n : ℝ) * Real.log x) := hexp_ineq
      _ = x ^ (n : ℝ) := by rw [hright]
  
  exact hfinal