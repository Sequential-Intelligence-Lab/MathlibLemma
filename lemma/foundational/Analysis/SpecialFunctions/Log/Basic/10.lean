import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.log_lt_log_of_nonneg {x y : ℝ} (hx : 0 ≤ x) (hy : 0 ≤ y)
    (hxy : x < y) (hx₀ : x ≠ 0) (hy₀ : y ≠ 0) :
    Real.log x < Real.log y := by
  have hx_pos : 0 < x := by
    by_contra h
    -- If x is not positive, then x ≤ 0
    have h₁ : x ≤ 0 := by linarith
    -- But we know x ≥ 0, so x = 0
    have h₂ : x = 0 := by linarith
    -- This contradicts the assumption x ≠ 0
    contradiction
  
  have h_main : Real.log x < Real.log y := by
    -- Use the property of the logarithm function that if 0 < x < y, then log x < log y
    have h₁ : 0 < x := hx_pos
    have h₂ : x < y := hxy
    -- Apply the lemma Real.log_lt_log which requires 0 < x and x < y
    have h₃ : Real.log x < Real.log y := Real.log_lt_log h₁ h₂
    exact h₃
  
  exact h_main