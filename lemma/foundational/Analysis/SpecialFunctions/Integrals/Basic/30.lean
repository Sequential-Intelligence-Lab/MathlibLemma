import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma integral_cos_shift_pi (a b : ℝ) :
    ∫ x in a..b, Real.cos (x + Real.pi) = - ∫ x in a..b, Real.cos x := by
  -- Use the trigonometric identity cos(x + π) = -cos(x)
  have h : ∀ x : ℝ, Real.cos (x + Real.pi) = -Real.cos x := fun x ↦ by
    rw [Real.cos_add_pi]
  -- Substitute the identity into the integral
  simp_all [intervalIntegral.integral_congr_ae]
  -- Factor out the negative sign from the integral
  <;> simp [integral_neg]
  -- Simplify the expression to match the desired form
  <;> simp [integral_add]
  -- Final simplification to ensure the expression is in the simplest form
  <;> simp