import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.rpow_le_rpow_of_nonpos_exponent {x y z : ℝ}
    (hx : 0 < x) (hxy : x ≤ y) (hz : z ≤ 0) :
    y ^ z ≤ x ^ z := by
  have hy : 0 < y := by
    -- Since x > 0 and x ≤ y, y must be greater than 0.
    linarith
  
  have h_log : Real.log x ≤ Real.log y := by
    -- Use the property of the logarithm function that if a ≤ b, then log(a) ≤ log(b).
    apply Real.log_le_log
    · -- Prove that 0 < x (already given by hx).
      linarith
    · -- Prove that x ≤ y (already given by hxy).
      linarith
  
  have h_mul : z * Real.log x ≥ z * Real.log y := by
    -- Use the fact that multiplying by a non-positive number reverses the inequality.
    have h : z * Real.log x ≥ z * Real.log y := by
      -- Use the fact that if a ≤ b and c ≤ 0, then c * a ≥ c * b.
      nlinarith [h_log]
    -- The result follows directly from the above step.
    exact h
  
  have h_exp : Real.exp (z * Real.log x) ≥ Real.exp (z * Real.log y) := by
    -- Use the fact that the exponential function is monotonically increasing.
    apply Real.exp_le_exp.mpr
    -- Use the previously established inequality z * Real.log x ≥ z * Real.log y.
    linarith
  
  have h_main : y ^ z ≤ x ^ z := by
    -- Use the definition of real power in terms of exponential and logarithm functions.
    have h₁ : x ^ z = Real.exp (z * Real.log x) := by
      rw [Real.rpow_def_of_pos hx]
      <;> ring_nf
    have h₂ : y ^ z = Real.exp (z * Real.log y) := by
      rw [Real.rpow_def_of_pos hy]
      <;> ring_nf
    -- Substitute the expressions for x^z and y^z into the inequality.
    rw [h₁, h₂]
    -- Use the previously established inequality involving exponential functions.
    linarith
  
  -- The main result follows directly from the established inequality.
  exact h_main