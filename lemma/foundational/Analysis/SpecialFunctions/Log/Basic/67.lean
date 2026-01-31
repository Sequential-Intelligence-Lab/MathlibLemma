import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.hasDerivAt_log' {x : ℝ} (hx : 0 < x) :
    HasDerivAt Real.log (1 / x) x := by
  have hx_ne_zero : x ≠ 0 := by
    intro h
    have h₁ : x = 0 := h
    linarith
  
  have h_main : HasDerivAt Real.log (1 / x) x := by
    have h₁ : HasDerivAt Real.log (x⁻¹) x := Real.hasDerivAt_log hx_ne_zero
    convert h₁ using 1
    <;> field_simp [hx_ne_zero]
    <;> ring
    <;> simp_all
    <;> field_simp [hx_ne_zero]
    <;> ring
  
  exact h_main