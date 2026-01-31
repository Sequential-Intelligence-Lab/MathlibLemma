import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_lt_rpow_of_lt_one {x y z : ℝ}
    (hx₀ : 0 < x) (hx₁ : x < 1) (hyz : y < z) :
    x ^ z < x ^ y := by
  have hlogx_neg : Real.log x < 0 := by
    have h₁ : Real.log x < Real.log 1 := Real.log_lt_log hx₀ hx₁
    have h₂ : Real.log 1 = (0 : ℝ) := by norm_num
    linarith
  
  have hmul : Real.log x * z < Real.log x * y := by
    have h₁ : Real.log x < 0 := hlogx_neg
    have h₂ : y < z := hyz
    -- Use the fact that multiplying both sides of an inequality by a negative number reverses the inequality.
    nlinarith
  
  have hexp : Real.exp (Real.log x * z) < Real.exp (Real.log x * y) := by
    apply Real.exp_lt_exp.mpr
    exact hmul
  
  have hxz : Real.exp (Real.log x * z) = x ^ z := by
    have h₁ : x > 0 := hx₀
    have h₂ : Real.exp (Real.log x * z) = Real.exp (z * Real.log x) := by
      ring_nf
      <;>
      simp [Real.exp_log, Real.exp_mul, hx₀.le]
      <;>
      ring_nf
    rw [h₂]
    -- Use the property of real power: x^z = exp(z * log x)
    have h₃ : x ^ z = Real.exp (z * Real.log x) := by
      rw [Real.rpow_def_of_pos hx₀]
      <;>
      ring_nf
    linarith
  
  have hxy : Real.exp (Real.log x * y) = x ^ y := by
    have h₁ : x > 0 := hx₀
    have h₂ : Real.exp (Real.log x * y) = Real.exp (y * Real.log x) := by
      ring_nf
      <;>
      simp [Real.exp_log, Real.exp_mul, hx₀.le]
      <;>
      ring_nf
    rw [h₂]
    -- Use the property of real power: x^y = exp(y * log x)
    have h₃ : x ^ y = Real.exp (y * Real.log x) := by
      rw [Real.rpow_def_of_pos hx₀]
      <;>
      ring_nf
    linarith
  
  have hfinal : x ^ z < x ^ y := by
    calc
      x ^ z = Real.exp (Real.log x * z) := by rw [hxz]
      _ < Real.exp (Real.log x * y) := hexp
      _ = x ^ y := by rw [hxy]
  
  exact hfinal